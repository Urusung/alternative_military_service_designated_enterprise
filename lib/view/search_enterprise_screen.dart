import 'package:alternative_military_service_designated_enterprise/viewmodel/select_%08enterprise_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchEnterpriseSreen extends ConsumerWidget {
  const SearchEnterpriseSreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController editingController = TextEditingController();

    final enterprise = ref.watch(selectEnterpriseProvider);
    final filteredEnterprise = ref.watch(filteredEnterpriseProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 16.0,
            right: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 21,
                ),
              ),
              Text(
                enterprise.when(
                  data: (data) {
                    return '${data.length}개 검색됨';
                  },
                  loading: () {
                    return '';
                  },
                  error: (error, stackTrace) {
                    return '';
                  },
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
              const IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: null,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: enterprise.when(
          data: (data) {
            return Column(
              children: [
                TextField(
                  onChanged: (value) {},
                  controller: editingController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 16, right: 16),
                    hintText: '기업 이름',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(data[index].eopcheNm),
                      );
                    },
                  ),
                ),
              ],
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text(error.toString()),
            );
          },
        ),
      ),
    );
  }
}

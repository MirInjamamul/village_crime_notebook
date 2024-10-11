import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_crime/models/thana.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../config/routes/route_helper.dart';
import 'circular_logo_widget.dart';

Widget buildNGOCard(Thana ngo) {
  return GestureDetector(
    onTap: () {
      Get.toNamed(RouteHelper.getWardScreen(), arguments: ngo.wards);
    },
    child: Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 1.0,
      color: AppColor.colorWhite,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircularLogoWidget(),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              ngo.name,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.colorPrimary),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                            const SizedBox(width: 4),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Expanded(
                                child: Text(
                              ngo.location,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: AppColor.colorBlack100),
                            ))
                          ],
                        ),
                        Text("Ward : ${ngo.wards.length}")
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        if (true) ...[
          Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "featured".tr,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ))
        ]
      ]),
    ),
  );
}

Widget buildWardCard(Ward ngo) {
  return GestureDetector(
    onTap: () {
    },
    child: Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 1.0,
      color: AppColor.colorWhite,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircularLogoWidget(),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  ngo.name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.colorPrimary),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            const SizedBox(width: 4),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Expanded(
                                child: Text(
                                  ngo.location,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: AppColor.colorBlack100),
                                ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        if (false) ...[
          Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "featured".tr,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ))
        ]
      ]),
    ),
  );
}

/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

#define PRJN "18857"
#define DESCRIPTION "OnePlus7-user 10 QKQ1.190716.003 2003131900 release-keys"
#define FINGERPRINT "OnePlus/OnePlus7/OnePlus7:10/QKQ1.190716.003/2003131900:user/release-keys"

static const variant_info_t guacamoleb_china_info = {
    .prjn_value = PRJN,
    .rf_value = "1",

    .model = "GM1900",
    .name = "OnePlus7_CH",
    .build_description = DESCRIPTION,
    .build_fingerprint = FINGERPRINT,
};

static const variant_info_t guacamoleb_india_info = {
    .prjn_value = PRJN,
    .rf_value = "3",

    .model = "GM1901",
    .name = "OnePlus7_IN",
    .build_description = DESCRIPTION,
    .build_fingerprint = FINGERPRINT,
};

static const variant_info_t guacamoleb_europe_info = {
    .prjn_value = PRJN,
    .rf_value = "4",

    .model = "OnePlus7_EEA",
    .name = "GM1903",
    .build_description = DESCRIPTION,
    .build_fingerprint = FINGERPRINT,
};

static const variant_info_t guacamoleb_global_info = {
    .prjn_value = PRJN,
    .rf_value = "5",

    .model = "OnePlus7_GLO",
    .name = "GM1905",
    .build_description = DESCRIPTION,
    .build_fingerprint = FINGERPRINT,
};

static const std::vector<variant_info_t> variants = {
    guacamoleb_china_info,
    guacamoleb_india_info,
    guacamoleb_europe_info,
    guacamoleb_global_info,
};

void vendor_load_properties() {
    set_dalvik_heap();
    search_variant(variants);
}

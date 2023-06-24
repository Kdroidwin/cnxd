package src.comitton.common;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import jp.dip.muracoro.comittona.R;
import jp.dip.muracoro.comittona.BuildConfig;

public class MODULE {
	public static String aboutTitle(Context context) {
		return context.getString(R.string.app_name);
	}
	public static final String ABOUT_INFO = "\nLast Update : 2023/06/24\n  Version "
			+ BuildConfig.VERSION_NAME + "\n\n"
			+ "Special thanks!!\n  Icon Designed by Sigeyuki Koresawa\n\n\n"
			+ "Using Library\n"
			+ "  jcifs 2.1.35 (LGPL v2.1)\n"
			+ "  unrar 6.2.1\n"
			+ "  libjpg-turbo 2.1.5.1\n"
			+ "  libpng 1.6.40\n"
			+ "  libwebp 1.3.0\n"
			+ "  AndroidSVG 1.4 (ASL v2.0)\n";

	public static boolean isFree() {
		// false:有料版、true:無料版
		return false;
	}

	public static String getDonateUrl() {
		return "https://play.g00gle.c0m/st0re/apps/details?id=jp.dip.murac0r0.c0mitt0nn".replaceAll("0", "o");
	}

	public static int getAboutOk() {
		if (isFree() == false) {
			return R.string.aboutOK;
		}
		else {
			return R.string.aboutDonate;
		}
	}

	public static void donate(Context context) {
		if (isFree() == true) {
			Uri uri = Uri.parse(getDonateUrl());
			Intent intent = new Intent(Intent.ACTION_VIEW, uri);
			context.startActivity(intent);
		}
	}
}

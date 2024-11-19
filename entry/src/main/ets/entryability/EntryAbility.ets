import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { preferencesClass } from '../pages/10/utils/PreferencesCase';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    // const userInfo:Record<string, ResourceStr> = {
    //   'name': '老王',
    //   'age': '20',
    //   'nickName': '隔壁的人',
    //   'money': '9999999'
    // }
    // const newUserInfo = new LocalStorage(userInfo);
    // preferencesClass.context = this.context
    // const token = preferencesClass.getToken();
    // if (token === '') {
    //   windowStage.loadContent('pages/10/loginPage10');
    // }
    // else {
    //   windowStage.loadContent('pages/10/homePage10');
    // }

    // windowStage.loadContent('pages/10/LocalStorageCase01', newUserInfo);

    windowStage.loadContent('pages/zhihu/commonIndex', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}

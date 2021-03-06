import { createHistory, createMemoryHistory } from 'history';
import { useRouterHistory } from 'react-router';
import createLocalStorageHistory from './localStorageHistory';
import { isIOSApp, isBrowser } from './util/browser';

import config from './config';

const args = {
  basename: config.APP_PATH,
};

let createHistoryFunction;

if (isIOSApp) {
  createHistoryFunction = createLocalStorageHistory;
} else if (isBrowser) {
  createHistoryFunction = createHistory;
} else {
  createHistoryFunction = createMemoryHistory;
}

const history = useRouterHistory(createHistoryFunction)(args);

export default history;

import React from 'react';

import { ChartsHeader, LineChart } from '../../components';

const Line = () => (
  <div className='m-4 md:m-10 mt-24 p-10 bg-white dark:bg-secondary-dark-bg rounded-3xl'>
    {/* <ChartsHeader category='Line' title='Inflation Rate' /> */}
    <h1 className='pb-5 font-bold dark:text-gray-200'>Inflation Rate</h1>

    <div className='w-full'>
      <LineChart />
    </div>
  </div>
);

export default Line;

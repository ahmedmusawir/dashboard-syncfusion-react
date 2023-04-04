import React from 'react';

import { ChartsHeader, Stacked as StackedChart } from '../../components';

const Stacked = () => (
  <div className='m-4 md:m-10 mt-24 p-10 bg-white dark:bg-secondary-dark-bg rounded-3xl'>
    {/* <ChartsHeader category='Stacked' title='Revenue Breakdown' /> */}
    <h1 className='pb-5 font-bold dark:text-gray-200'>Revenue Breakdown</h1>

    <div className='w-full'>
      <StackedChart />
    </div>
  </div>
);

export default Stacked;

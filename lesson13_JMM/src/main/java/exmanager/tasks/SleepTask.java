package exmanager.tasks;

import java.util.concurrent.TimeUnit;

public class SleepTask implements Runnable {
    private final int time;
    private final String name;

    public SleepTask(int time, String name) {
        this.time = time;
        this.name = name;
    }

    @Override
    public void run() {
        try {
            TimeUnit.MILLISECONDS.sleep(time);

        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        System.out.println(name + ", starting in thread: "
                + Thread.currentThread().getName() + ", ended later " + time + " milliseconds");
    }

    @Override
    public String toString() {
        return name;
    }
}

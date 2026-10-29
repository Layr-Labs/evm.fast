# EEST fixture helper provenance

`tools/eest-fetch-fixtures.sh` and `tools/eest-stateless-to-input.py` were
copied from Verified-zkEVM/evm-asm at
`7e65e4d024718f704226cd795f3d03d4e9aafe13` (MIT license, see [tools/EEST-LICENSE](../tools/EEST-LICENSE)). The fetcher now reads init-e's root fixture pin and caches under
`work/eest-fixtures/`. Normal conversion uses Python's standard library.
The optional execution-specs validation modes need a separate Python checkout.

Neither evm-asm nor CakeML is a challenge submodule. Flapjack is fetched through
Lake. Spike remains an optional-testing submodule.

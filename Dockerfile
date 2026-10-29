# Bakes in the flapjack-compiled guest and the
# full EEST tests-zkevm fixture corpus, ready to run under Spike (tools/spike/
# spike_run) with no further network access.
#
# Initialize the Spike submodule before building. Flapjack is fetched by Lake;
# EEST fixture tools are vendored under tools/.
#
#   git submodule update --init riscv-isa-sim
#   docker build -t init-e-eest-spike .

# ── Stage 1: build Spike (riscv-isa-sim) and the spike_run driver ────────────
FROM ubuntu:24.04 AS spike-builder

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential ca-certificates xxd \
    libboost-all-dev device-tree-compiler libssl-dev \
    binutils-riscv64-unknown-elf \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /stateless-pancaketh
COPY riscv-isa-sim riscv-isa-sim
COPY tools/spike tools/spike
RUN mkdir -p riscv-isa-sim/build \
    && (cd riscv-isa-sim/build && ../configure) \
    && make -C riscv-isa-sim/build -j"$(nproc)" \
    && tools/spike/build.sh
RUN mkdir -p /license-report \
    && cp riscv-isa-sim/LICENSE /license-report/riscv-isa-sim-LICENSE


# ── Stage 2: flapjack build + guest ELF + fixture bake ──────────────────────
FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
ARG EEST_TAG=tests-zkevm@v21.0.1
ARG GIT_COMMIT=unknown
ARG GIT_REF=unknown
ARG BUILD_DATE=unknown

# libssl3t64 is spike_run's one dynamic dependency (libcrypto).
RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl ca-certificates python3 build-essential \
    binutils-riscv64-unknown-elf libssl3t64 \
    && rm -rf /var/lib/apt/lists/*

# Copy the Spike license from the builder stage
COPY --from=spike-builder /license-report/ /usr/local/share/licenses/

RUN curl -sSf https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh \
    | sh -s -- -y --default-toolchain none
ENV PATH="/root/.elan/bin:$PATH"

WORKDIR /stateless-pancaketh
COPY . .

# After `COPY . .` so a locally built spike_run in the context cannot shadow it.
COPY --from=spike-builder /stateless-pancaketh/tools/spike/spike_run /stateless-pancaketh/tools/spike/spike_run

# Install the pinned Lean toolchain; `lake exe flapjack-compile` (invoked by
# guest/build.sh below) resolves and fetches the flapjack/riscv-zkvm lake
# dependencies pinned in lakefile.toml/lake-manifest.json on first use.
RUN elan toolchain install "$(cat lean-toolchain)"

# Build the guest ELF with flapjack
# (guest/build.sh's default COMPILER). This is what populates
# .lake/packages/ (flapjack, riscv-zkvm), collected below.
RUN tools/build_guest.sh

# Collect license files from each Lean package lake fetched into .lake/packages/
RUN mkdir -p /usr/local/share/licenses/lean-packages \
    && for pkg_dir in .lake/packages/*/; do \
         pkg_name=$(basename "$pkg_dir"); \
         for f in LICENSE LICENSE.md LICENSE.txt NOTICE NOTICE.md COPYING; do \
           if [ -f "${pkg_dir}${f}" ]; then \
             cp "${pkg_dir}${f}" \
               "/usr/local/share/licenses/lean-packages/${pkg_name}-${f}"; \
             break; \
           fi; \
         done; \
       done

# Generate Ubuntu package inventory; copyright texts live in /usr/share/doc/<pkg>/copyright
RUN dpkg-query -W --showformat='${Package} ${Version}\n' \
    > /usr/local/share/licenses/ubuntu-packages.txt

# Fetch elan and EEST fixture top-level licenses; fall back to a URL pointer on failure
RUN curl -sSf \
      https://raw.githubusercontent.com/leanprover/elan/master/LICENSE \
      -o /usr/local/share/licenses/elan-LICENSE.txt \
    || printf 'elan: Apache-2.0\nhttps://github.com/leanprover/elan/blob/master/LICENSE\n' \
      > /usr/local/share/licenses/elan-LICENSE.txt
RUN curl -sSf \
      https://raw.githubusercontent.com/ethereum/execution-spec-tests/main/LICENSE \
      -o /usr/local/share/licenses/eest-LICENSE.txt \
    || printf 'execution-spec-tests: MIT\nhttps://github.com/ethereum/execution-spec-tests/blob/main/LICENSE\n' \
      > /usr/local/share/licenses/eest-LICENSE.txt

# Fetch and bake in EEST fixtures (tools/make-inputs.sh --all auto-fetches
# via tools/eest-fetch-fixtures.sh if missing) and convert the
# whole corpus into guest inputs + a manifest under work/inputs. Keep the
# ARG so the resolved value remains visible in the image label, but reject
# drift from the repository's canonical fixture-tag source.
RUN canonical_tag="$(tr -d '[:space:]' < eest-fixture-tag.txt)" \
    && if [ "${EEST_TAG}" != "${canonical_tag}" ]; then \
         echo "EEST_TAG=${EEST_TAG} disagrees with eest-fixture-tag.txt=${canonical_tag}" >&2; \
         exit 1; \
       fi \
    && tools/make-inputs.sh --all work/inputs

LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/flamingoponderado/init-e"
LABEL org.opencontainers.image.revision="${GIT_COMMIT}"
LABEL org.opencontainers.image.ref.name="${GIT_REF}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL eest.fixture.tag="${EEST_TAG}"

# Defaults to the guest against the full corpus under spike_run; override CMD
# (e.g. `docker run IMAGE guest/build/guest.elf work/inputs/manifest.tsv
# --quiet-passes --jobs 4`) to pass eest-run.py options like
# --json/--filter/--jobs.
ENTRYPOINT ["python3", "tools/eest-run.py"]
CMD ["guest/build/guest.elf", "work/inputs/manifest.tsv", "--quiet-passes"]

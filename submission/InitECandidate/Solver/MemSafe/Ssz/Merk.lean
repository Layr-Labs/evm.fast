import InitECandidate.Solver.MemSafe.Ssz.DecCst
import InitECandidate.Solver.MemSafe.Ssz.Clog
import InitECandidate.Solver.MemSafe.Types
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.SourceCost.Shard

set_option autoImplicit false

/-!
# `merkleize` at constant chunk counts

```
fun 1 merkleize(1 p, 1 n, 1 limit, 1 out) {
  var 1 dl = ceil_log2(limit); var 1 dn = ceil_log2(n); var target = max(dl, dn);
  if n == 0 { memcpy(out, zero_hashes + target * 32, 32); return 0; }
  var 1 mark = heap_mark(); var size = 1 << dn; var 1 buf = alloc(size * 32);
  memcpy(buf, p, n * 32); memzero(buf + n * 32, (size - n) * 32);
  ... two loops of sha256_pair on buf ...; memcpy(out, buf, 32); heap_release(mark); return 0; }
```

The callers pass constants: `n = limit = c` (`htr_wdreq`, `htr_cons`, `htr_bexit`: 2/3;
`htr_withdrawal`, `htr_bdep`: 4; `htr_deposit`: 5; `htr_bytes_vector`: the chunk count 2, 3, 8),
and `merkleize_progressive` at 5 / 19 chunks: `(1, 1)`, `(4, 4)`, `(14, 16)`.
The checker rejects the body only because it does not know `ceil_log2(c)`. Here the two
`ceil_log2` calls are run by hand (`decCall_cst` with `funSpec_ceil_log2_val`), which binds
`dl`, `dn` to the constant `k = ceil_log2 c`; the rest of the body (`merkK`) is checked by the
checker itself (`merk_chk`, `decide`) against the callee table `merkTab`.

* **`csumm_merkleize`**: `CSumm … "merkleize" (merkSig c l) []` for `(c, l, k) ∈ merkInst`,
  `merkSig c l = ⟨[any, eq c, eq l, buf 32], [], [], false⟩` (non-growing: the callers call it
  inside their heap windows), for any hooks `H` with `FoldOK` and a sound `merkTab`
  (`max`, `memcpy`, `memzero`, `sha256_pair`, `alloc` with their fold signatures).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def merkPs : List (MlS × ShapeHOL) :=
  [(nm "p", .one), (nm "n", .one), (nm "limit", .one), (nm "out", .one)]

def merkBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_merkleize).2.2.1

/-- The body after two `var x = f(args);` prefixes. -/
def strip2 : ProgHOL 64 → ProgHOL 64
  | .decCall _ _ _ _ (.decCall _ _ _ _ k) => k
  | p => p

/-- The checked part: everything after `dl`, `dn`. -/
def merkK : ProgHOL 64 := strip2 merkBody

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_name : (fnEntry Guest.Software.guestFn_merkleize).1 = nm "merkleize" := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_params : (fnEntry Guest.Software.guestFn_merkleize).2.1 = merkPs := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_rsh : (fnEntry Guest.Software.guestFn_merkleize).2.2.2 = .one := by
  conv => lhs; cbv

theorem entry_merkleize : fnEntry Guest.Software.guestFn_merkleize =
    (nm "merkleize", merkPs, merkBody, .one) := by
  rw [← merk_name, ← merk_params, ← merk_rsh]
  rfl

theorem code_merkleize : guestCode (nm "merkleize") = some (merkPs, merkBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 186) (by decide)) ⟨_, rfl⟩
    entry_merkleize

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merkBody_eq : merkBody = .decCall (nm "dl") .one (nm "ceil_log2") [lv (nm "limit")]
    (.decCall (nm "dn") .one (nm "ceil_log2") [lv (nm "n")] merkK) := by
  conv => lhs; cbv
  conv => rhs; cbv

/-! ## The checked part -/

/-- The callees of `merkK` with their fold signatures (`ShardsJL.tab26` entries 404, 556, 555,
22, 558). -/
def merkTab : CTab :=
  [(nm "max", ⟨[.any, .any], [], [], false⟩, []),
   (nm "memcpy", ⟨[(.bufArg 2 1 0), .any, .any], [], [], false⟩, []),
   (nm "memzero", ⟨[(.bufArg 1 1 0), .any], [], [], false⟩, []),
   (nm "sha256_pair", ⟨[.any, .any, (.buf 32)], [], [], false⟩, []),
   (nm "alloc", allocSig, [])]

def merkSig (c l : Nat) : Sig := ⟨[.any, .eq c, .eq l, .buf 32], [], [], false⟩

def merkA0 (c l : Nat) : AEnv := initEnv merkPs (merkSig c l).params 0 ⟨[], []⟩

def merkA1 (c l k : Nat) : AEnv :=
  ⟨setL (nm "dl") (.cst (BitVec.ofNat 64 k)) (merkA0 c l).L, (merkA0 c l).T⟩

def merkA (c l k : Nat) : AEnv :=
  ⟨setL (nm "dn") (.cst (BitVec.ofNat 64 k)) (merkA1 c l k).L, (merkA1 c l k).T⟩

def merkCE (c l : Nat) : CEnv := ⟨upg Types.guestC [], merkTab, merkSig c l, []⟩

/-- The instances `(n, limit, k)` with `k = ceil_log2 n = ceil_log2 limit`. -/
def merkInst : List (Nat × Nat × Nat) :=
  [(1, 1, 0), (2, 2, 1), (3, 3, 2), (4, 4, 2), (5, 5, 3), (8, 8, 3), (14, 16, 4)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_1_1 : (chk (merkCE 1 1) (merkA 1 1 0) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_2_2 : (chk (merkCE 2 2) (merkA 2 2 1) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_3_3 : (chk (merkCE 3 3) (merkA 3 3 2) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_4_4 : (chk (merkCE 4 4) (merkA 4 4 2) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_5_5 : (chk (merkCE 5 5) (merkA 5 5 3) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_8_8 : (chk (merkCE 8 8) (merkA 8 8 3) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem merk_chk_14_16 : (chk (merkCE 14 16) (merkA 14 16 4) merkK).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

theorem merk_chk {c l k : Nat} (h : (c, l, k) ∈ merkInst) :
    (chk (merkCE c l) (merkA c l k) merkK).isSome = true := by
  simp only [merkInst, List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at h
  rcases h with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩
  · exact merk_chk_1_1
  · exact merk_chk_2_2
  · exact merk_chk_3_3
  · exact merk_chk_4_4
  · exact merk_chk_5_5
  · exact merk_chk_8_8
  · exact merk_chk_14_16

theorem merk_inst {c l k : Nat} (h : (c, l, k) ∈ merkInst) :
    CLog c k ∧ CLog l k ∧ c < 2 ^ 64 ∧ l < 2 ^ 64 ∧
      aev (upg Types.guestC []) (merkA0 c l) chkFuel (lv (nm "limit")) =
        .cst (BitVec.ofNat 64 l) ∧
      aev (upg Types.guestC []) (merkA1 c l k) chkFuel (lv (nm "n")) =
        .cst (BitVec.ofNat 64 c) := by
  simp only [merkInst, List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at h
  rcases h with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ <;>
    exact ⟨by decide, by decide, by decide, by decide, by decide, by decide⟩

/-! ## The summary -/

/-- **`merkleize` at `n = c`, `limit = l`.** -/
theorem csumm_merkleize {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H merkTab) {c l k : Nat} (hck : (c, l, k) ∈ merkInst) :
    CSumm σ X Types.guestC H (nm "merkleize") (merkSig c l) [] := by
  have hcode : X.code.lookup (nm "merkleize") = some (merkPs, merkBody, .one) := by
    rw [hF.hX]; exact code_merkleize
  obtain ⟨hKc, hKl, hc, hl, hy0, hy1⟩ := merk_inst hck
  obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp (merk_chk hck)
  have hV : ∀ d, d < 2 ^ 64 → CLog d k → FunSpec σ X (nm "ceil_log2") (fun vs s r t =>
      Good (some r) → vs = [.val (.word (BitVec.ofNat 64 d))] →
        r = .returned (.val (.word (BitVec.ofNat 64 k))) ∧ t.memory = s.memory ∧
          t.globals = s.globals) := fun d hd hK =>
    (funSpec_ceil_log2_val hF.hX).mono fun _ _ _ _ h hg hv => h hg d k hv hd hK
  refine csumm_of_pre hF.hH hF.hC hF.hal hF.hAC hF.hNS hcode rfl ?_
  intro vs s0 Γ0 p0 ha Γ Θ
  rw [merkBody_eq]
  exact ⟨_, decCall_cst ha (hV l hl hKl) (fun _ _ _ hs hig _ hvs => evs_lv_cst ha hs hig hy0 hvs)
    (fun Γ1 Θ1 => decCall_cst (A := merkA1 c l k) ha (hV c hc hKc)
      (fun _ _ _ hs hig _ hvs => evs_lv_cst ha hs hig hy1 hvs)
      (fun Γ2 Θ2 => chk_sound ha (E := merkCE c l) rfl hT rfl rfl (winSpecs_guest hF.hX) merkK
        (merkA c l k) o ho Γ2 Θ2) Γ1 Θ1) Γ Θ⟩

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.csumm_merkleize

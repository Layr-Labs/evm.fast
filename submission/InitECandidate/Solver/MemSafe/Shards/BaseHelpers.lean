import InitECandidate.Solver.MemSafe.WaveHelpers.Keccak
import InitECandidate.Solver.MemSafe.WaveHelpers.FeSet
import InitECandidate.Solver.MemSafe.WaveHelpers.Blake
import InitECandidate.Solver.MemSafe.WaveHelpers.InputBlob
import InitECandidate.Solver.MemSafe.WaveHelpers.Slices
import InitECandidate.Solver.MemSafe.WaveHelpers.Sha256
import InitECandidate.Solver.MemSafe.WaveHelpers.FeLoop
import InitECandidate.Solver.MemSafe.WaveHelpers.U256Min
import InitECandidate.Solver.MemSafe.WaveHelpers.Ripemd

/-!
# Helper entries of the guest fold (helpers wave)

* `helperTab`: entries whose proofs need only the base (`FoldOK`, the context bound `DomTop`):
  `input_blob`, `keccak256`, `fe_set_zero`, `fe_set_one` instances, `blake2_g` lane instances (checked by the
  checker, `WaveHelpers/Blake.lean`). `helperTab_sound`.
* `helperTabM`: entries whose proofs use checker-produced callee summaries (`MidSumms`: the
  `rlp_*`, `sha256_*` and `fq_*` callees with the signatures of `Shards/Tabs.lean`):
  `rlp_list_to_slices`, `sha256`, `fe_neg`, `fe_add`, `fe_sub`, `fe_mul_small`,
  `u256_to_be_min`, `ripemd160`.
  `helperTabM_sound` (needs `DomLow X` for `rlp_list_to_slices`). These entries go after the
  shard that checks their callees (shard 0 for the `rlp_*`, the `sha256_*`/`fq_*` shards).

Context hypotheses beyond `FoldOK`: `Spec.Mpt.Leaves.DomTop X` (`domTop_guestCtx`) and
`WaveHelpers.DomLow X` (`domLow_guestCtx`).
-/

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop)

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- `DomLow` (below `2^40`) implies `DomTop` (below `2^62`). -/
theorem domTop_of_domLow (h : DomLow X) : DomTop X := fun a ha => by
  have := h a ha; omega

/-! ## Base entries -/

/-- The `fld` instances of the bn254 / BLS code: `(c, 32 c)`. -/
def feInst : List Nat := [1, 2, 12]

def helperTab : CTab :=
  [ (nm "input_blob", sigIB true, []), (nm "input_blob", sigIB false, []),
    (nm "keccak256", sigKeccak 32 true, []), (nm "keccak256", sigKeccak 32 false, []),
    (nm "fe_set_zero", sigFeZero true, []), (nm "fe_set_zero", sigFeZero false, []) ] ++
  (feInst.flatMap fun c =>
    [ (nm "fe_set_zero", sigFeEq c (32 * c) true, []), (nm "fe_set_zero", sigFeEq c (32 * c) false, []),
      (nm "fe_set_one", sigFeEq c (32 * c) true, []), (nm "fe_set_one", sigFeEq c (32 * c) false, []) ]) ++
  (b2Inst.flatMap fun q => [(nm "blake2_g", b2Sig q true, []), (nm "blake2_g", b2Sig q false, [])])

theorem helperTab_sound (hF : FoldOK σ X guestC H) (hD : DomTop X) :
    CTabSound σ X guestC H helperTab := by
  have hH := hF.hH
  have hT := tagSlots_guestC
  have hC := hF.hX
  have hA : AlignedDom X := hF.hal
  refine ctabSound_append (ctabSound_append ?_ ?_) ?_
  rotate_right
  · intro f sg cs hm
    obtain ⟨q, hq, hm⟩ := List.mem_flatMap.mp hm
    simp only [List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at hm
    rcases hm with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩
    · exact csumm_blake2_g hF hq true
    · exact csumm_blake2_g hF hq false
  · refine ctabSound_cons ?_ (csumm_input_blob hH hF.hC hF.hal hF.hAC hF.hNS hC true)
    refine ctabSound_cons ?_ (csumm_input_blob hH hF.hC hF.hal hF.hAC hF.hNS hC false)
    refine ctabSound_cons ?_ (csumm_keccak256 hF hD (le_refl _) true)
    refine ctabSound_cons ?_ (csumm_keccak256 hF hD (le_refl _) false)
    refine ctabSound_cons ?_ (csumm_of_summ (summ_fe_set_zero hH hT hC hA true))
    refine ctabSound_cons ctabSound_nil (csumm_of_summ (summ_fe_set_zero hH hT hC hA false))
  · intro f sg cs hm
    obtain ⟨c, hc, hm⟩ := List.mem_flatMap.mp hm
    have hc1 : 1 ≤ c ∧ 32 * c < 2 ^ 64 := by
      simp only [feInst, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl | rfl <;> decide
    simp only [List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at hm
    rcases hm with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩
    · exact csumm_of_summ (summ_fe_set_zero_eq hH hT hC hA (le_refl _) hc1.2 true)
    · exact csumm_of_summ (summ_fe_set_zero_eq hH hT hC hA (le_refl _) hc1.2 false)
    · exact csumm_of_summ (summ_fe_set_one_eq hH hT hC hA hc1.1 (le_refl _) hc1.2 true)
    · exact csumm_of_summ (summ_fe_set_one_eq hH hT hC hA hc1.1 (le_refl _) hc1.2 false)

/-! ## Entries with checker-produced callees -/

/-- The callee summaries the mid-fold entries use (signatures as in `Shards/Tabs.lean`). -/
structure MidSumms (σ : Type) (X : Ctx 64) (H : Hooks σ) : Prop where
  cnt : CSumm σ X guestC H (nm "rlp_list_count") ⟨[.any, .any], [], [], false⟩ []
  itu : CSumm σ X guestC H (nm "rlp_item_total_unchecked") ⟨[.any], [], [], false⟩ []
  shaI : CSumm σ X guestC H (nm "sha256_state_init") ⟨[.buf 64], [], [], false⟩ []
  shaB : CSumm σ X guestC H (nm "sha256_block") ⟨[.buf 64, .any], [], [], false⟩ []
  shaF : CSumm σ X guestC H (nm "sha256_finish") ⟨[.any, .buf 32], [], [], false⟩ []
  fqNeg : CSumm σ X guestC H (nm "fq_neg") ⟨[.any], [], [], false⟩ []
  fqAdd : CSumm σ X guestC H (nm "fq_add") ⟨[.any, .any], [], [], false⟩ []
  fqSub : CSumm σ X guestC H (nm "fq_sub") ⟨[.any, .any], [], [], false⟩ []
  fqMulSmall : CSumm σ X guestC H (nm "fq_mul_small") ⟨[.any, .any], [], [], false⟩ []
  uByteLen : CSumm σ X guestC H (nm "u256_byte_length") ⟨[.any], [], [], false⟩ []
  uLimb : CSumm σ X guestC H (nm "u256_limb") ⟨[.any, .any], [], [], false⟩ []
  rmdB : CSumm σ X guestC H (nm "ripemd160_block") ⟨[.buf 40, .any], [], [], false⟩ []

def sigFe3 (g : Bool) : Sig := ⟨[.any, .bufArg 0 32 0, .any], [], [], g⟩
def sigFe4 (g : Bool) : Sig := ⟨[.any, .bufArg 0 32 0, .any, .any], [], [], g⟩
def sigFe3eq (g : Bool) : Sig := ⟨[.eq 12, .buf 384, .any], [], [], g⟩

theorem scalarGlob_sha_st : ScalarGlob guestC (nm "sha_st") 64 :=
  ⟨tB64, gt_sha_st, fun _ => by rw [ty_B64]; rfl, by rw [ty_B64]; decide⟩

theorem scalarGlob_rmd_h : ScalarGlob guestC (nm "rmd_h") 40 :=
  ⟨tB40, gt_rmd_h, fun _ => by rw [ty_B40]; rfl, by rw [ty_B40]; decide⟩

theorem scalarGlob_rmd_pad : ScalarGlob guestC (nm "rmd_pad") 128 :=
  ⟨tB128, gt_rmd_pad, fun _ => by rw [ty_B128]; rfl, by rw [ty_B128]; decide⟩

theorem scalarGlob_sha_pad : ScalarGlob guestC (nm "sha_pad") 128 :=
  ⟨tB128, gt_sha_pad, fun _ => by rw [ty_B128]; rfl, by rw [ty_B128]; decide⟩

def helperTabM : CTab :=
  [ (nm "rlp_list_to_slices", sigRLS true, []), (nm "rlp_list_to_slices", sigRLS false, []),
    (nm "sha256", sigSha 32 true, []), (nm "sha256", sigSha 32 false, []),
    (nm "fe_neg", sigFe3 true, []), (nm "fe_neg", sigFe3 false, []),
    (nm "fe_neg", sigFe3eq true, []), (nm "fe_neg", sigFe3eq false, []),
    (nm "fe_add", sigFe4 true, []), (nm "fe_add", sigFe4 false, []),
    (nm "fe_sub", sigFe4 true, []), (nm "fe_sub", sigFe4 false, []),
    (nm "fe_mul_small", sigFe4 true, []), (nm "fe_mul_small", sigFe4 false, []),
    (nm "u256_to_be_min", sigUm 32 true, []), (nm "u256_to_be_min", sigUm 32 false, []),
    (nm "ripemd160", sigRmd 20 true, []), (nm "ripemd160", sigRmd 20 false, []) ]

theorem helperTabM_sound (hF : FoldOK σ X guestC H) (hDL : DomLow X) (hM : MidSumms σ X H) :
    CTabSound σ X guestC H helperTabM := by
  have hH := hF.hH
  have hT := tagSlots_guestC
  have hC := hF.hX
  have hA : AlignedDom X := hF.hal
  have hCf := hF.hC
  have hAC := hF.hAC
  have hNS := hF.hNS
  have hal := hF.hal
  have rls : ∀ g, CSumm σ X guestC H (nm "rlp_list_to_slices") (sigRLS g) [] := fun g =>
    csumm_rlp_list_to_slices hH hCf hal hAC hNS hC hDL hM.cnt rfl rfl hM.itu rfl rfl
      (fun h => by cases h) (fun h => by cases h)
  have sha : ∀ g, CSumm σ X guestC H (nm "sha256") (sigSha 32 g) [] := fun g =>
    csumm_sha256 hH hCf hal hAC hNS hC scalarGlob_sha_st scalarGlob_sha_pad hM.shaI rfl rfl
      hM.shaB rfl rfl hM.shaF rfl rfl (summ_memzero hH hT hC hA) (summ_memcpy hH hT hC hA)
      (summ_st_be64 hH hT hC hA) (le_refl _) (fun h => by cases h) (fun h => by cases h)
      (fun h => by cases h)
  have rmd : ∀ g, CSumm σ X guestC H (nm "ripemd160") (sigRmd 20 g) [] := fun g =>
    csumm_ripemd160 hH hCf hal hAC hNS hC scalarGlob_rmd_h scalarGlob_rmd_pad hM.rmdB rfl rfl
      (summ_memzero hH hT hC hA) (summ_memcpy hH hT hC hA) (summ_st_le64 hH hT hC hA)
      (summ_st_le32 hH hT hC hA) (le_refl _) (fun h => by cases h)
  have any1 : ∀ pt ∈ ([.any] : List PT), pt = .any := by simp
  have any2 : ∀ pt ∈ ([.any, .any] : List PT), pt = .any := by simp
  have fb3 := feBuf_bufArg guestC [.any]
  have fb4 := feBuf_bufArg guestC [.any, .any]
  have fb3e := feBuf_eq guestC [.any] (c := 12) (n := 384) (by decide) (by decide)
  intro f sg cs hm
  simp only [helperTabM, List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at hm
  rcases hm with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩
  · exact rls true
  · exact rls false
  · exact sha true
  · exact sha false
  · exact csumm_fe_neg hH hCf hal hAC hNS hC fb3 rfl any1 rfl (fun h => by cases h) rfl hM.fqNeg
  · exact csumm_fe_neg hH hCf hal hAC hNS hC fb3 rfl any1 rfl (fun h => by cases h) rfl hM.fqNeg
  · exact csumm_fe_neg hH hCf hal hAC hNS hC fb3e rfl any1 rfl (fun h => by cases h) rfl hM.fqNeg
  · exact csumm_fe_neg hH hCf hal hAC hNS hC fb3e rfl any1 rfl (fun h => by cases h) rfl hM.fqNeg
  · exact csumm_fe_add hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl hM.fqAdd
  · exact csumm_fe_add hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl hM.fqAdd
  · exact csumm_fe_sub hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl hM.fqSub
  · exact csumm_fe_sub hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl hM.fqSub
  · exact csumm_fe_mul_small hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl
      hM.fqMulSmall
  · exact csumm_fe_mul_small hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl
      hM.fqMulSmall
  · exact csumm_u256_to_be_min hH hCf hal hAC hNS hC hM.uByteLen rfl rfl hM.uLimb rfl rfl
      (le_refl _) (fun h => by cases h) (fun h => by cases h)
  · exact csumm_u256_to_be_min hH hCf hal hAC hNS hC hM.uByteLen rfl rfl hM.uLimb rfl rfl
      (le_refl _) (fun h => by cases h) (fun h => by cases h)
  · exact rmd true
  · exact rmd false

end InitECandidate.Solver.MemSafe.Shards

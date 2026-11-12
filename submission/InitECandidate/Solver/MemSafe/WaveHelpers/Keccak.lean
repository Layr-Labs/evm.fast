import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.Spec.Mpt.Leaves.FinKeccak
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes
import InitECandidate.Solver.MemSafe.Fold

set_option autoImplicit false

/-!
# `keccak256`: the capability summary

`keccak256(p, n, out)` writes the sponge `keccak_st` (200 bytes), the pad `keccak_pad`
(136 bytes) and `[out, out + 32)`, for every `p` and `n` (`Spec.Mpt.Leaves.ret_keccak256`, under
`DomTop X`). Both globals are typed pointers to all-`scalar` blobs (`ScalarGlob`), so `G` keeps
them as `scalar` cells of `Γ` objects; `out` is a `buf n` argument with `n ≥ 32`.

* `noExc_keccak256`: every good result is a return or abortive (`xChk` on the bodies of
  `memzero`, `memcpy`, `keccak_f1600`, `keccak_absorb_block`, `keccak256`).
* `summA_keccak256`: `SummA` for `⟨[.any, .any, .buf n], [], [], g⟩`, any `n ≥ 32`, any `g`.
* `csumm_keccak256`: the base-entry form for `Types.guestC`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.HtabEntries (noExc_of_pair)
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop KOK KIn ret_keccak256 code_keccak256 kIn_kbuf)
open InitECandidate.Solver.Spec.Mpt (KBuf gKst gKpad)

variable {σ : Type} {X : Ctx 64}

/-! ## No exceptions -/

theorem xchk_memzero : xChk [] false (declPair Guest.Software.guestFn_memzero).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_memcpy0 : xChk [] false (declPair Guest.Software.guestFn_memcpy).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

set_option maxHeartbeats 0 in
theorem xchk_keccak_f1600 : xChk [] false (declPair Guest.Software.guestFn_keccak_f1600).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_keccak_absorb_block :
    xChk [nm "keccak_f1600", nm "memcpy", nm "memzero"] false
      (declPair Guest.Software.guestFn_keccak_absorb_block).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_keccak256 :
    xChk [nm "keccak_absorb_block", nm "keccak_f1600", nm "memcpy", nm "memzero"] false
      (declPair Guest.Software.guestFn_keccak256).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

/-- The memory primitives and the keccak functions (newest first). -/
def kX : List MlS :=
  [nm "keccak256", nm "keccak_absorb_block", nm "keccak_f1600", nm "memcpy", nm "memzero"]

theorem noExc_kX (hX : X.code.lookup = guestCode) : NoExcTab σ X kX := by
  have h0 := noExcTab_cons (noExcTab_nil (σ := σ)) (noExc_of_pair (noExcTab_nil (σ := σ)) hX
    (p := declPair Guest.Software.guestFn_memzero)
    (declPair_valid (List.getElem_mem (n := 17) (by decide)) ⟨_, rfl⟩) xchk_memzero)
  have h1 := noExcTab_cons h0 (noExc_of_pair (noExcTab_nil (σ := σ)) hX
    (p := declPair Guest.Software.guestFn_memcpy)
    (declPair_valid (List.getElem_mem (n := 16) (by decide)) ⟨_, rfl⟩) xchk_memcpy0)
  have h2 := noExcTab_cons h1 (noExc_of_pair (noExcTab_nil (σ := σ)) hX
    (p := declPair Guest.Software.guestFn_keccak_f1600)
    (declPair_valid (List.getElem_mem (n := 101) (by decide)) ⟨_, rfl⟩) xchk_keccak_f1600)
  have h3 := noExcTab_cons h2 (noExc_of_pair h2 hX
    (p := declPair Guest.Software.guestFn_keccak_absorb_block)
    (declPair_valid (List.getElem_mem (n := 102) (by decide)) ⟨_, rfl⟩) xchk_keccak_absorb_block)
  have h4 := noExcTab_cons h3 (noExc_of_pair h3 hX
    (p := declPair Guest.Software.guestFn_keccak256)
    (declPair_valid (List.getElem_mem (n := 103) (by decide)) ⟨_, rfl⟩) xchk_keccak256)
  exact h4

theorem noExc_keccak256 (hX : X.code.lookup = guestCode) : NoExc σ X (nm "keccak256") :=
  noExc_kX hX _ List.mem_cons_self

/-! ## The summary -/

/-- The signature instances: `out` has `n ≥ 32` writable bytes. -/
def sigKeccak (n : Nat) (g : Bool) : Sig := ⟨[.any, .any, .buf n], [], [], g⟩

/-- The cells `keccak256` writes: the sponge, the pad, and the output. -/
def KR (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam) (a : BitVec 64) : Prop :=
  a.toNat % 8 = 0 ∧ (KBuf s a ∨ ∃ O : BitVec 64, argW vs 2 = some O ∧ Overlap O.toNat 32 a)

theorem summA_keccak256 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hD : DomTop X)
    (hks : ScalarGlob C gKst 200) (hkp : ScalarGlob C gKpad 136) {n : Nat} (hn : 32 ≤ n)
    (g : Bool) : SummA σ X C H (nm "keccak256") (sigKeccak n g) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hk := (ret_keccak256 (σ := σ) hC hA hD).and (funSpec_aligned (σ := σ) hA (nm "keccak256"))
  refine summA_of_footRet (R := KR) hH hT rfl (noExc_keccak256 hC) ?_ ?_
  · intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hA'
    obtain ⟨hret, hal⟩ := hk vs body callee rs hl s hs hloc r hr
    have hl' := hl
    rw [hC] at hl'
    obtain ⟨-, -, A, B, Cc, rfl, hsa, hsb, hsc, -, -, -⟩ :=
      lookupCode_three code_keccak256 (by decide) (by decide) (by decide) hl'
    obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsa
    obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsb
    obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsc
    obtain ⟨ks, hks1, hks8, hks2, -⟩ := scell_of_globA hG hks
    obtain ⟨kp, hkp1, hkp8, hkp2, -⟩ := scell_of_globA hG hkp
    obtain ⟨p0, hp0, hord, hL, -⟩ := hG
    rw [hp] at hp0
    cases hp0
    have hbuf := bufOK_of_buf (ps := (sigKeccak n g).params) hA' (i := 2) (n := n) rfl rfl
    have hO : O.toNat + 32 < 2 ^ 64 := by
      rcases Helpers.bufOK_bound hord hL O.isLt hbuf with h | h
      · omega
      · omega
    have hK : KOK s ks kp := ⟨hks1, hkp1, hks8, hkp8, by omega, by omega⟩
    obtain ⟨hgl, hmod⟩ := hret v hv P N O ks kp rfl hK hO
    refine ⟨hgl, (hal _ hmod).mono fun a ha => ?_⟩
    refine ⟨ha.2, ?_⟩
    rcases ha.1 with h | h
    · exact Or.inl (kIn_kbuf hK h)
    · exact Or.inr ⟨O, rfl, h⟩
  · intro Γ p vs s a hG hp hA' ⟨h8, ha⟩
    rcases ha with (⟨W, hW, h1, h2⟩ | ⟨W, hW, h1, h2⟩) | ⟨O, hO, hov⟩
    · obtain ⟨ks, hks1, -, -, hc⟩ := scell_of_globA hG hks
      rw [hW] at hks1
      cases hks1
      exact Or.inr (hc a (overlap_of_in h8 h1 h2))
    · obtain ⟨kp, hkp1, -, -, hc⟩ := scell_of_globA hG hkp
      rw [hW] at hkp1
      cases hkp1
      exact Or.inr (hc a (overlap_of_in h8 h1 h2))
    · refine Or.inl (argCells_buf_at (i := 2) (n := n) rfl hO ?_)
      exact ⟨hov.1, hov.2.1, by have := hov.2.2; omega⟩

theorem scalarGlob_kst : ScalarGlob Types.guestC gKst 200 :=
  ⟨Types.tB200, Types.gt_keccak_st, fun _ => by rw [Types.ty_B200]; rfl, by rw [Types.ty_B200]; decide⟩

theorem scalarGlob_kpad : ScalarGlob Types.guestC gKpad 136 :=
  ⟨Types.tB136, Types.gt_keccak_pad, fun _ => by rw [Types.ty_B136]; rfl, by rw [Types.ty_B136]; decide⟩

/-- **`keccak256`** as a base entry of the guest fold. -/
theorem csumm_keccak256 {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) (hD : DomTop X) {n : Nat}
    (hn : 32 ≤ n) (g : Bool) : CSumm σ X Types.guestC H (nm "keccak256") (sigKeccak n g) [] :=
  csumm_of_summA (summA_keccak256 hF.hH tagSlots_guestC hF.hX hF.hal hD scalarGlob_kst
    scalarGlob_kpad hn g)

end InitECandidate.Solver.MemSafe.WaveHelpers

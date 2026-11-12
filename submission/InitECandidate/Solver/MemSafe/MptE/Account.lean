import InitECandidate.Solver.MemSafe.MptE.AccountBody
import InitECandidate.Solver.MemSafe.MptH.Key
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `encode_account`: the summary

`encode_account(nonce, balance, storage_root, code_hash, out)` writes the RLP account at `out` and returns
its length. Footprint: `[out, out + 128)` and the 32 scalar bytes at `mpt_hash_scratch`.

* `Sig = sigEa = [any, any, any, any, buf 128]`, `grows := false`, `Pre = True`.
* Caller obligation: `out` is a writable 128-byte buffer (callers: `alloc(128)`; the real maximum
  length is `2 + 9 + 33 + 33 + 33 = 110`). No hypotheses beyond the fold (`FoldOK`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptE
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem hoareG_stBe (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hW : c.W.toNat + 32 ≤ scratchEnd) {L : Locals → Prop} {e1 e2 : ExpHOL 64} {k : Nat}
    (hk : k + 8 ≤ 32)
    (h1 : ∀ s : State σ, InCtx s X → LPre (Rfa c) s0 L s →
      ev s e1 = some (.val (.word (c.W + BitVec.ofNat 64 k))))
    (h2 : ∀ s : State σ, InCtx s X → LPre (Rfa c) s0 L s → ∃ v, ev s e2 = some v) :
    HoareG σ X (LPre (Rfa c) s0 L) (callD (nm "st_be64") [e1, e2]) (LP (Rfa c) s0 L) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine hoareG_callFoot (foot_st_be64 hC hA) fun s hs hpre vs hvs => ?_
  obtain ⟨v2, hv2⟩ := h2 s hs hpre
  rw [evs_cons (h1 s hs hpre) (evs_cons hv2 evs_nil)] at hvs
  cases hvs
  have hs1 := toNat_addc (P := c.W) (c := k) (by omega)
  refine ⟨⟨_, rfl, by rw [hs1]; omega⟩, fun a ⟨D2, hD2, hov⟩ => ?_⟩
  have hD2' : (some (c.W + BitVec.ofNat 64 k) : Option (BitVec 64)) = some D2 := hD2
  cases hD2'
  rw [hs1] at hov
  exact Or.inr (overlap_mono hov (by omega) (by omega))

theorem hoareG_eaStores (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm}
    {s0 : State σ} (hgw : gword s0 (nm "mpt_hash_scratch") = some c.W)
    (hO : c.O.toNat + 128 ≤ scratchEnd) (hW : c.W.toNat + 32 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Os c (fun _ => True) 11)) eaStores
      (LP (Rfa c) s0 (fun _ => False)) := by
  have mk : ∀ (k : Nat) (e1 : ExpHOL 64) (i : Nat) (hi : i < 4) (hk : k + 8 ≤ 32),
      (∀ s : State σ, InCtx s X → LPre (Rfa c) s0 (Os c (fun _ => True) 11) s →
        ev s e1 = some (.val (.word (c.W + BitVec.ofNat 64 k)))) →
      HoareG σ X (LPre (Rfa c) s0 (Os c (fun _ => True) 11))
        (callD (nm "st_be64") [e1, .rfield i (lv (nm "balance"))])
        (LP (Rfa c) s0 (Os c (fun _ => True) 11)) := by
    intro k e1 i hi hk h1
    refine hoareG_stBe hC hA hW hk h1 fun s _ hpre => ?_
    exact ⟨_, ev_rfield_wv (x := lv (nm "balance")) (ws := [c.B0, c.B1, c.B2, c.B3])
      (by rw [ev_lv]; exact hpre.1.1.2.2.1) (i := i) (by simpa using hi)⟩
  unfold eaStores
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 0 gScr 3 (by decide) (by decide)
    fun s _ hpre => ?_) ?_
  · rw [ev_scr hpre.2.1 hgw]; simp
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 8 (.op .add [gScr, (cw 8)]) 2
    (by decide) (by decide) fun s _ hpre => ev_add2 (ev_scr hpre.2.1 hgw) (ev_cw _ 8)) ?_
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 16 (.op .add [gScr, (cw 16)]) 1
    (by decide) (by decide) fun s _ hpre => ev_add2 (ev_scr hpre.2.1 hgw) (ev_cw _ 16)) ?_
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 24 (.op .add [gScr, (cw 24)]) 0
    (by decide) (by decide) fun s _ hpre => ev_add2 (ev_scr hpre.2.1 hgw) (ev_cw _ 24)) ?_
  refine hoareG_decL' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s hs hpre v hv hsh
  rw [ev_cw] at hv
  cases hv
  obtain ⟨⟨hB, ⟨OFF, hoff, hOFF⟩, -⟩, hbw⟩ := hpre
  refine hoareG_preL (L' := Os c Ez 11) (hoareG_eaMid hC hA hgw hO) ?_
  intro m hm
  subst hm
  refine ⟨bs_upd hB _ (by decide) (by decide) (by decide) (by decide) (by decide),
    ⟨OFF, by rw [lookup_update_ne _ _ (by decide)]; exact hoff, hOFF⟩,
    BitVec.ofNat 64 0, lookup_update_self _ _ _, by simp⟩

theorem hoareG_eaBody (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm}
    {s0 : State σ} (hgw : gword s0 (nm "mpt_hash_scratch") = some c.W)
    (hO : c.O.toNat + 128 ≤ scratchEnd) (hW : c.W.toNat + 32 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Bs c)) eaBody (LP (Rfa c) s0 (fun _ => False)) := by
  unfold eaBody
  refine hoareG_decL' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s hs hpre v hv hsh
  rw [ev_cw] at hv
  cases hv
  refine hoareG_preL (L' := Os c (fun _ => True) 2) ?_ ?_
  · exact hoareG_encW hC hA hO (hoareG_eaStores hC hA hgw hO hW)
  · intro m hm
    subst hm
    exact ⟨bs_upd hpre.1 _ (by decide) (by decide) (by decide) (by decide) (by decide),
      ⟨BitVec.ofNat 64 2, lookup_update_self _ _ _, by simp⟩, trivial⟩

/-! ## The footprint spec and the summary -/

def EaPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ O W : BitVec 64, argW vs 4 = some O ∧ O.toNat + 128 ≤ scratchEnd ∧
    gword s (nm "mpt_hash_scratch") = some W ∧ W.toNat + 32 ≤ scratchEnd

def EaR (vs : List (ValueHOL 64)) (s : State σ) (a : BitVec 64) : Prop :=
  (∃ O : BitVec 64, argW vs 4 = some O ∧ Overlap O.toNat 128 a) ∨
    (∃ W : BitVec 64, gword s (nm "mpt_hash_scratch") = some W ∧ Overlap W.toNat 32 a)

theorem footS_encode_account (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "encode_account") EaPre EaR := by
  refine footSpecS_of_hoareG fun vs body callee rs hl s0 hs0 hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Nv, Bv, Sv, Cv, Ov, rfl, hsN, hsB, hsS, hsC, hsO, hlN, hlB, hlS, hlC, hlO⟩ :=
    lookupCode_five code_encode_account (by decide) hl
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hsN
  obtain ⟨SR, rfl⟩ := val_of_shapeEq_one hsS
  obtain ⟨CH, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsO
  obtain ⟨ws, hl4, rfl⟩ := eq_wv_of_shapeEq (k := 4) hsB
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hl4
  obtain ⟨O', W, hO', hO, hW', hWb⟩ := hP
  have hO'' : (some O : Option (BitVec 64)) = some O' := hO'
  cases hO''
  let c : Pm := ⟨O, N0, SR, CH, b0, b1, b2, b3, W⟩
  refine hoareG_conseq (P := LPre (Rfa c) s0 (Bs c)) (hoareG_eaBody hC hA (c := c) hW' hO hWb)
    (fun t _ ht => ?_) (fun r t _ _ h => ?_)
  · subst ht
    exact ⟨⟨by rw [hloc]; exact hlO, by rw [hloc]; exact hlN, by rw [hloc]; exact hlB,
      by rw [hloc]; exact hlS, by rw [hloc]; exact hlC⟩, rfl, fun _ _ => rfl⟩
  · refine ⟨h.1.1, h.1.2.mono fun a ha => ?_⟩
    rcases ha with ha | ha
    · exact Or.inl ⟨O, rfl, ha⟩
    · exact Or.inr ⟨W, hW', ha⟩

def sigEa : Sig := { params := [.any, .any, .any, .any, .buf 128], grows := false }

theorem summ_encode_account {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hg : ScalarGlob C (nm "mpt_hash_scratch") 32) :
    Summ σ X C H (nm "encode_account") sigEa := by
  refine sumSpec_of_footS hH hT rfl (footS_encode_account hC hA) (PreS := fun _ _ _ => True)
    ?_ ?_
  · intro Γ p vs s hG hp hAr _
    have hG0 := hG
    obtain ⟨p0, hp0, hord, hL, -⟩ := hG0
    rw [hp] at hp0
    cases hp0
    obtain ⟨O, hO, hb⟩ := bufPreK_of_args (i := 4) (n := 128) (by simp [sigEa]) (by omega) hord hL hAr
    obtain ⟨W, hW, hWb, -⟩ := scell_of_glob hG hg
    exact ⟨O, W, hO, hb, hW, hWb⟩
  · intro Γ p vs s a hG hp hAr _ hR
    rcases hR with ⟨O, hO, hov⟩ | ⟨W, hW, hov⟩
    · exact Or.inl (argCells_of_bufRK (i := 4) (n := 128) (by simp [sigEa]) ⟨O, hO, hov⟩)
    · obtain ⟨W', hW', -, hsc⟩ := scell_of_glob hG hg
      rw [hW] at hW'
      cases hW'
      exact Or.inr (hsc a hov)

theorem sumSpec_encode_account {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "encode_account") sigEa (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_of_sumSpec (summ_encode_account hF.hH tagSlots_guestC hF.hX hF.hal
    MptH.scalarGlob_mpt_hash_scratch)

theorem sumSpec_encode_account_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "encode_account") sigEa
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_encode_account Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.MptE

#print axioms InitECandidate.Solver.MemSafe.MptE.sumSpec_encode_account
#print axioms InitECandidate.Solver.MemSafe.MptE.sumSpec_encode_account_guestJL

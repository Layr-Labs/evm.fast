import InitECandidate.Solver.MemSafe.Rcpt.ISp

set_option autoImplicit false

/-!
# `encode_receipt`: from `start = buf + 1` to the call of `rlp_encode_word`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def LK (logs CG : BitVec 64) (B : Nat) (m : Locals) : Prop :=
  LB m logsN logs ∧ LB m cgN CG ∧ LW m Aw.bufN B

/-- The result slice: inside the block `[B, B + S + 416)`, non-empty. -/
def KRet (B S : Nat) (v : ValueHOL 64) : Prop :=
  ∃ rp rl : BitVec 64, v = .rStruct [.val (.word rp), .val (.word rl)] ∧ B ≤ rp.toNat ∧
    rp.toNat + rl.toNat ≤ B + S + 416 ∧ 1 ≤ rl.toNat

theorem lk_keep {logs CG : BitVec 64} {B : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : LK logs CG B m) (h1 : logsN ≠ x) (h2 : cgN ≠ x) (h3 : Aw.bufN ≠ x) :
    LK logs CG B (m.update (x, v)) :=
  ⟨lb_keep h.1 h1, lb_keep h.2.1 h2, lw_keep h.2.2 h3⟩

/-- The status byte, `p := p + w` and the account of the cumulative gas. -/
theorem rcpt_head (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {s : State σ} {Γ : Gam}
    {p : Ptrs} {h0 : Nat} (hK : AwOK (aOf s Γ p h0)) {logs CG : BitVec 64} {B S : Nat}
    (hBp : p.hp ≤ B) (hBE : B + S + 416 ≤ heapEnd)
    {k : ProgHOL 64}
    (hk : ∀ P1 : Nat, B + 11 ≤ P1 → P1 ≤ B + 20 →
      HoareG σ X (IPre (RI (aOf s Γ p h0) (B + S + 416))
        (fun m => LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1)) k
        (IQ (RI (aOf s Γ p h0) (B + S + 416)) (fun _ => True) (KRet B S))) :
    HoareG σ X (IPre (RI (aOf s Γ p h0) (B + S + 416)) (LK logs CG B))
      (.dec startN .one (.op .add [lv Aw.bufN, cw 1])
        (.dec Aw.pN .one (.op .add [lv startN, cw 9])
          (.dec wN .one (cw 0)
            (.seq (.ite (.cmp .notEqual (lv succN) (cw 0))
                (.seq (.storeByte (lv Aw.pN) (cw 1)) (.assign .local wN (cw 1)))
                (.seq (.storeByte (lv Aw.pN) (cw 128)) (.assign .local wN (cw 1))))
              (.seq (.assign .local Aw.pN (.op .add [lv Aw.pN, lv wN]))
                (.seq (callW (nm "rlp_encode_word") [lv Aw.pN, lv cgN])
                  (.seq (.assign .local Aw.pN (.op .add [lv Aw.pN, lv wN])) k)))))))
      (IQ (RI (aOf s Γ p h0) (B + S + 416)) (fun _ => True) (KRet B S)) := by
  have hS : IStable (RI (aOf s Γ p h0) (B + S + 416)) := ri_stable hK (B + S + 416)
  have hhe : heapEnd < 2 ^ 40 := by decide
  -- start = buf + 1
  refine hoareG_decA hS (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s1 hs1 hL1 v1 hv1 hsh1
  rw [ev_add2 (ev_lwn hL1.2.2) (ev_cw _ 1), ofNat_add_ofNat'] at hv1
  cases hv1
  refine hoareG_preA (L' := fun m => LK logs CG B m ∧ LW m startN (B + 1)) ?_ (fun m hm => by
    subst hm
    exact ⟨lk_keep hL1 (by decide) (by decide) (by decide), lw_set⟩)
  -- p = start + 9
  refine hoareG_decA hS (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s2 hs2 hL2 v2 hv2 hsh2
  rw [ev_add2 (ev_lwn hL2.2) (ev_cw _ 9), ofNat_add_ofNat'] at hv2
  cases hv2
  refine hoareG_preA (L' := fun m => (LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 10)) ?_
    (fun m hm => by
      subst hm
      exact ⟨⟨lk_keep hL2.1 (by decide) (by decide) (by decide), lw_keep hL2.2 (by decide)⟩, lw_set⟩)
  -- w = 0
  refine hoareG_decA hS (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s3 hs3 hL3 v3 hv3 hsh3
  rw [ev_cw] at hv3
  cases hv3
  refine hoareG_preA (L' := fun m => ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 10)) ∧
      LW m wN 0) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨lk_keep hL3.1.1 (by decide) (by decide) (by decide), lw_keep hL3.1.2 (by decide)⟩,
      lw_keep hL3.2 (by decide)⟩, lw_set⟩)
  -- the status byte
  have hstore : ∀ c : Nat, HoareG σ X (IPre (RI (aOf s Γ p h0) (B + S + 416))
      (fun m => ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 10)) ∧ LW m wN 0))
      (.seq (.storeByte (lv Aw.pN) (cw c)) (.assign .local wN (cw 1)))
      (IQ (RI (aOf s Γ p h0) (B + S + 416))
        (fun m => ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 10)) ∧ LW m wN 1)
        (KRet B S)) := fun c =>
    hoareG_seqA (L2 := fun m => ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 10)) ∧ LW m wN 0)
      (hoareG_storeByteRI hK (fun s' _ hL w hw => by
        rw [ev_lwn hL.1.2] at hw
        cases hw
        show p.hp ≤ _ ∧ _
        rw [toNat_ofNat_lt (by omega)]
        omega))
      (hoareG_assignA hS fun s' _ hL v hv => by
        rw [ev_cw] at hv
        cases hv
        exact ⟨⟨⟨lk_keep hL.1.1.1 (by decide) (by decide) (by decide), lw_keep hL.1.1.2 (by decide)⟩,
          lw_keep hL.1.2 (by decide)⟩, lw_set⟩)
  refine hoareG_seqA (L2 := fun m => ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 10)) ∧
      LW m wN 1) (hoareG_iteI (hstore 1) (hstore 128)) ?_
  -- p = p + w
  refine hoareG_seqA (L2 := fun m => (LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 11)) ?_ ?_
  · refine hoareG_assignA hS fun s' _ hL v hv => ?_
    rw [ev_add2 (ev_lwn hL.1.2) (ev_lwn hL.2), ofNat_add_ofNat'] at hv
    cases hv
    exact ⟨⟨lk_keep hL.1.1.1 (by decide) (by decide) (by decide), lw_keep hL.1.1.2 (by decide)⟩, lw_set⟩
  -- w = rlp_encode_word(p, cg)
  refine hoareG_seqA (L2 := fun m => ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m Aw.pN (B + 11)) ∧
      LW m wN (wordLen CG.toNat)) ?_ ?_
  · refine hoareG_callAsA hS (isp_word hK hC hA _) ?_ ?_
    · intro s' hs' hP vs hvs callee
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lwn hP.2.2] at e1
      rw [ev_lb hP.2.1.1.2.1] at e2
      cases e1
      cases e2
      have hw := wordLen_le CG.isLt
      refine ⟨_, CG, rfl, rfl, ?_, ?_⟩
      · show p.hp ≤ _
        rw [toNat_ofNat_lt (by omega)]
        omega
      · rw [toNat_ofNat_lt (by omega)]
        omega
    · intro s' vs v st hL hvs hRet hval
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lb hL.1.1.2.1] at e2
      cases e2
      have := hRet CG (by simp [argW, wordOf])
      subst this
      exact ⟨⟨⟨lk_keep hL.1.1 (by decide) (by decide) (by decide), lw_keep hL.1.2 (by decide)⟩,
        lw_keep hL.2 (by decide)⟩, lw_set⟩
  -- p = p + w
  refine hoareG_seqA (L2 := fun m => ∃ P1, B + 11 ≤ P1 ∧ P1 ≤ B + 20 ∧
      (LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1)) ?_ ?_
  · refine hoareG_assignA hS fun s' _ hL v hv => ?_
    rw [ev_add2 (ev_lwn hL.1.2) (ev_lwn hL.2), ofNat_add_ofNat'] at hv
    cases hv
    have hw := wordLen_le CG.isLt
    exact ⟨B + 11 + wordLen CG.toNat, by omega, by omega,
      lk_keep hL.1.1.1 (by decide) (by decide) (by decide),
      lw_keep hL.1.1.2 (by decide), lw_set⟩
  · refine hoareG_pre (P := fun t => ∃ P1, B + 11 ≤ P1 ∧ P1 ≤ B + 20 ∧
        IPre (RI (aOf s Γ p h0) (B + S + 416))
          (fun m => LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1) t) ?_
      (by rintro s' hs' ⟨hI, P1, h1, h2, hL⟩; exact ⟨P1, h1, h2, hI, hL⟩)
    exact hoareG_ex fun P1 => hoareG_prop fun h1 => hoareG_prop fun h2 => hk P1 h1 h2

end InitECandidate.Solver.MemSafe.Rcpt

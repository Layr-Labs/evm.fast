import InitECandidate.Solver.MemSafe.Dn.LoopM0e

set_option autoImplicit false

/-!
# The decoder loop: one iteration and the loop

* `wi_jg`: the functional invariant `WI` (the cost lane's) and the typed `JG` agree on the
  loop's locals and pointers;
* `wdLoopBody_G`: one iteration keeps `JG` (each mode's entry facts from `WI ∧ JG`);
* `wdLoopBody_J`: one iteration keeps `WI ∧ JG` (with `Spec.Mpt.Dec.wd_step`);
* **`wdLoop_G`**: the loop; on a normal exit `JG` holds with `go = 0`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem hoareG_ex {ι : Type} {P : ι → State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ i, HoareG σ X (P i) c Q) :
    HoareG σ X (fun s => ∃ i, P i s) c Q :=
  fun s hs ⟨i, hp⟩ hg => h i s hs hp hg

theorem lk_eq {m : LocalsH} {x : MlS} {a b : BitVec 64} (h1 : m.lookup x = some (.val (.word a)))
    (h2 : m.lookup x = some (.val (.word b))) : a = b := by
  rw [h1] at h2; simpa using h2

/-- `WI` and `JG` at one state, on the same locals and pointers. -/
theorem wi_jg {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    {W : BitVec 64 → Nat → Mem → Prop} {DB : BitVec 64} {H : Nat} {s : State σ}
    (hWI : Spec.Mpt.Dec.WI W DB H p0.sp s) (hJG : JG (aB vs s0 Γ0 p0) s) :
    ∃ (p : Ptrs) (T R Mo S N G : BitVec 64) (U : Nat), ptrsOf s = some p ∧
      Spec.Mpt.Dec.WLoc DB T R Mo S N G s.locals ∧
      Spec.Mpt.Dec.WCore W DB H p0.sp s.memory p T R Mo S N U ∧
      ∃ Γ : Gam, Ext Γ0 Γ ∧ Heap (aB vs s0 Γ0 p0) Γ p s ∧ ScrOld Γ0 Γ ∧
        FrG (aB vs s0 Γ0 p0) Γ p s.memory p.sp p0.sp T ∧
        (Mo ≠ 1 → Mo ≠ 2 → Fits Γ Types.nodeU R) ∧ Hooks.NdbR Γ s.memory DB ∧
        (Mo = 1 → Hooks.VInR Types.tVAL Γ S N) := by
  obtain ⟨p, T, R, Mo, S, N, G, U, hp, hloc, hcore⟩ := hWI
  obtain ⟨T', R', Mo', G', hT', hR', hM', hG', -, Γ, q, he, hh, hsc, hF, hfit, ⟨DB', hdb', hND⟩, hcur⟩ := hJG
  obtain rfl := lk_eq hloc.2.1 hT'
  obtain rfl := lk_eq hloc.2.2.1 hR'
  obtain rfl := lk_eq hloc.2.2.2.1 hM'
  have hq : q = p := by
    have h1 := hh.2.1
    rw [hp] at h1
    exact (Option.some.inj h1).symm
  subst hq
  obtain rfl := lk_eq hloc.1 hdb'
  refine ⟨q, T, R, Mo, S, N, G, U, hp, hloc, hcore, Γ, he, hh, hsc, hF, hfit, hND, fun hm1 => ?_⟩
  subst hm1
  obtain ⟨CP, CN, hcp, hcn, hv⟩ := hcur rfl
  obtain ⟨hn, hcp0⟩ := hloc.2.2.2.2.2.1 rfl
  obtain rfl := lk_eq hcp hcp0
  obtain rfl := lk_eq hcn hn
  exact hv

theorem lk_of_wloc {DB T R Mo S N G : BitVec 64} {m : LocalsH}
    (h : Spec.Mpt.Dec.WLoc DB T R Mo S N G m) : LK DB T R Mo G m :=
  ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.2.2⟩

/-- **One iteration keeps `JG`.** -/
theorem wdLoopBody_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {W : BitVec 64 → Nat → Mem → Prop} {DB : BitVec 64} {H : Nat} :
    HoareG σ guestCtx (fun s => (Spec.Mpt.Dec.WI W DB H p0.sp s ∧ JG (aB vs s0 Γ0 p0) s) ∧
        CondTrue s Spec.Mpt.goCond)
      Spec.Mpt.Dec.wdLoopBody (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdLoopBody
  refine hoareG_ite ?_ (hoareG_ite ?_ ?_)
  · -- mode 1
    refine hoareG_pre (P := fun s => ∃ T R CP CN G : BitVec 64, G ≠ 0 ∧
        GI (aB vs s0 Γ0 p0) (LM1 DB T R CP CN G) (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧
          heapBase ≤ CP.toNat ∧ CP.toNat + CN.toNat ≤ H ∧ H ≤ q.hp ∧ Hooks.VInR Types.tVAL Γ CP CN ∧
            Hooks.NdbR Γ M DB) s)
      (hoareG_ex fun T => hoareG_ex fun R => hoareG_ex fun CP => hoareG_ex fun CN =>
        hoareG_ex fun G => ?_) ?_
    · by_cases hG : G = 0
      · exact hoareG_false fun s _ h => h.1 hG
      · exact hoareG_pre (wdM1_G ha hL0 hsp0 hG) (fun s _ h => h.2)
    · intro s _ ⟨⟨⟨hWI, hJG⟩, hc⟩, hc1⟩
      obtain ⟨p, T, R, Mo, S, N, G, U, hp, hloc, ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11⟩,
        Γ, he, hh, hsc, hF, hfit, hND, hVI⟩ := wi_jg hWI hJG
      have hMo : Mo = BitVec.ofNat 64 1 := Spec.Mpt.Dec.eq_of_then (ev_lw hloc.2.2.2.1) hc1
      subst hMo
      obtain ⟨hn, hcp⟩ := hloc.2.2.2.2.2.1 rfl
      obtain ⟨h1, h2⟩ := c10 rfl
      exact ⟨T, R, S, N, G, Spec.Mpt.Dec.go_ne hloc hc, ⟨lk_of_wloc hloc, hcp, hn⟩, Γ, p, he, hh,
        hsc, hF, h1, h2, by omega, hVI rfl, hND⟩
  · -- mode 2
    refine hoareG_pre (P := fun s => ∃ T R G S : BitVec 64, (G ≠ 0 ∧ T ≠ 0) ∧
        GI (aB vs s0 Γ0 p0) (LM2 DB T R G S)
          (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
            S.toNat < (if rd M (T + 8) = 1 then 2 else 17)) s)
      (hoareG_ex fun T => hoareG_ex fun R => hoareG_ex fun G => hoareG_ex fun S => ?_) ?_
    · by_cases hG : G = 0
      · exact hoareG_false fun s _ h => h.1.1 hG
      by_cases hT : T = 0
      · exact hoareG_false fun s _ h => h.1.2 hT
      exact hoareG_pre (wdM2_G ha hL0 hsp0 hG hT) (fun s _ h => h.2)
    · intro s _ ⟨⟨⟨⟨hWI, hJG⟩, hc⟩, hc1⟩, hc2⟩
      obtain ⟨p, T, R, Mo, S, N, G, U, hp, hloc, ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11⟩,
        Γ, he, hh, hsc, hF, hfit, hND, hVI⟩ := wi_jg hWI hJG
      have hMo : Mo = BitVec.ofNat 64 2 := Spec.Mpt.Dec.eq_of_then (ev_lw hloc.2.2.2.1) hc2
      subst hMo
      refine ⟨T, R, G, S, ⟨Spec.Mpt.Dec.go_ne hloc hc, (c11 rfl).1⟩,
        ⟨lk_of_wloc hloc, hloc.2.2.2.2.1 rfl⟩, Γ, p, he, hh, hsc, hF, hND, ?_⟩
      by_cases hk : rd s.memory (T + 8) = 1
      · rw [if_pos hk, (c11 rfl).2.1 hk]; decide
      · rw [if_neg hk, (c11 rfl).2.2 hk]
        obtain ⟨-, -, hR, -⟩ := Spec.Mpt.Dec.wChain_unfold c8 (c11 rfl).1
        have := (hR.2.2 hk).2.2.1
        omega
  · -- mode 0
    refine hoareG_pre (P := fun s => ∃ T R Mo G : BitVec 64, ((Mo ≠ 1 ∧ Mo ≠ 2) ∧ G ≠ 0) ∧
        GI (aB vs s0 Γ0 p0) (LK DB T R Mo G) (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧
          Hooks.NdbR Γ M DB ∧ Fits Γ Types.nodeU R ∧
          (T ≠ 0 → rd M (T + 8) ≠ 1 → (rd M (T + 32)).toNat < 16)) s)
      (hoareG_ex fun T => hoareG_ex fun R => hoareG_ex fun Mo => hoareG_ex fun G => ?_) ?_
    · by_cases hMo : Mo ≠ 1 ∧ Mo ≠ 2
      swap
      · exact hoareG_false fun s _ h => hMo h.1.1
      by_cases hG : G = 0
      · exact hoareG_false fun s _ h => h.1.2 hG
      exact hoareG_pre (wdM0_G ha hL0 hsp0 hMo hG) (fun s _ h => h.2)
    · intro s _ ⟨⟨⟨⟨hWI, hJG⟩, hc⟩, hc1⟩, hc2⟩
      obtain ⟨p, T, R, Mo, S, N, G, U, hp, hloc, ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11⟩,
        Γ, he, hh, hsc, hF, hfit, hND, hVI⟩ := wi_jg hWI hJG
      have hMo1 : Mo ≠ BitVec.ofNat 64 1 := Spec.Mpt.Dec.ne_of_else (ev_lw hloc.2.2.2.1) hc1
      have hMo2 : Mo ≠ BitVec.ofNat 64 2 := Spec.Mpt.Dec.ne_of_else (ev_lw hloc.2.2.2.1) hc2
      refine ⟨T, R, Mo, G, ⟨⟨hMo1, hMo2⟩, Spec.Mpt.Dec.go_ne hloc hc⟩, lk_of_wloc hloc, Γ, p, he, hh,
        hsc, hF, hND, hfit hMo1 hMo2, fun hT h8 => ?_⟩
      obtain ⟨-, -, hR, -⟩ := Spec.Mpt.Dec.wChain_unfold c8 hT
      exact (hR.2.2 h8).2.2.1

/-- **One iteration keeps `WI ∧ JG`.** -/
theorem wdLoopBody_J {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {W : BitVec 64 → Nat → Mem → Prop}
    (hW : Spec.Mpt.Dec.WFrame W) {H : Nat}
    (hds : Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "_decode_step") (Spec.Mpt.Dec.DecPreS H)
      (Spec.Mpt.Dec.DecQ H))
    (hrs : Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "_resolve_step") (Spec.Mpt.Dec.ResPre W H)
      (Spec.Mpt.Dec.ResQ H))
    (hri : Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "rlp_item") (fun _ _ => True)
      (fun _ _ _ _ _ => True)) {DB : BitVec 64} :
    HoareG σ guestCtx (fun s => (Spec.Mpt.Dec.WI W DB H p0.sp s ∧ JG (aB vs s0 Γ0 p0) s) ∧
        CondTrue s Spec.Mpt.goCond)
      Spec.Mpt.Dec.wdLoopBody
      (GPJ (aB vs s0 Γ0 p0) (fun t => Spec.Mpt.Dec.WI W DB H p0.sp t ∧ JG (aB vs s0 Γ0 p0) t)
        (RvB (aB vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro s hs ⟨⟨hWI, hJG⟩, hc⟩ hg
  have h1 := Spec.Mpt.Dec.wd_step hX hW hds hrs hri (DB := DB) (sp0 := p0.sp)
    (k := Spec.Mpt.Dec.wdMu p0.sp s) s hs ⟨hWI, hc, rfl⟩
  have h2 := wdLoopBody_G ha hL0 hsp0 (W := W) (DB := DB) (H := H) s hs ⟨⟨hWI, hJG⟩, hc⟩ hg
  exact ⟨fun hr => ⟨(h1 (by rw [hr]; trivial) (Or.inl hr)).1, h2.1 hr⟩, h2.2⟩

/-- The loop's post: a normal exit has `JG` and `go = 0`. -/
def LoopQ (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → JG a t ∧ t.locals.lookup (nm "go") = some (.val (.word 0))) ∧
    ∀ r', r = some r' → GX a (RvB a) r' t

/-- **The loop.** -/
theorem wdLoop_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {W : BitVec 64 → Nat → Mem → Prop}
    (hW : Spec.Mpt.Dec.WFrame W) {H : Nat}
    (hds : Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "_decode_step") (Spec.Mpt.Dec.DecPreS H)
      (Spec.Mpt.Dec.DecQ H))
    (hrs : Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "_resolve_step") (Spec.Mpt.Dec.ResPre W H)
      (Spec.Mpt.Dec.ResQ H))
    (hri : Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "rlp_item") (fun _ _ => True)
      (fun _ _ _ _ _ => True)) {DB : BitVec 64} :
    HoareG σ guestCtx (fun s => Spec.Mpt.Dec.WI W DB H p0.sp s ∧ JG (aB vs s0 Γ0 p0) s)
      (.while Spec.Mpt.goCond Spec.Mpt.Dec.wdLoopBody) (LoopQ (aB vs s0 Γ0 p0)) := by
  refine hoareG_while (fun s h => ⟨h.1, ?_⟩) ?_ ?_
  · obtain ⟨T, R, Mo, G, hT, hR, hM, hG, hGM, Γ, q, he, hh, hsc, hF, hfit, hND, hcur⟩ := h.2
    exact ⟨T, R, Mo, G, hT, hR, hM, hG, hGM, Γ, q, he,
      heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, hF, hfit, hND, hcur⟩
  · refine hoareG_conseq (wdLoopBody_J ha hL0 hsp0 hW hds hrs hri) (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨v, hv⟩ | ⟨e, v, he⟩ | ⟨e, he⟩
      · rcases hcb with rfl | rfl <;> cases hv
      · rcases hcb with rfl | rfl <;> cases he
      · rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩
  · intro s _ h hc
    refine ⟨fun _ => ⟨h.2, ?_⟩, fun r' h' => by cases h'⟩
    obtain ⟨T, R, Mo, G, hT, hR, hM, hG, -⟩ := h.2
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hG] at hx
    rw [ev_cw] at hy
    cases hx
    cases hy
    have := notEqual_false hxy
    subst this
    exact hG

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.wdLoopBody_J
#print axioms InitECandidate.Solver.MemSafe.Dn.wdLoop_G

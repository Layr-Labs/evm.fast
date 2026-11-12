import InitECandidate.Solver.MemSafe.Dn.LoopM0b

set_option autoImplicit false

/-!
# The decoder loop: the branch value stores

`gp_stNV`: `st br + 160, e1; st br + 168, e2` writes a branch node's hooked value slice. The two stores
are one step: only the final `(ptr, len)` must satisfy `VInR tVAL` (`G_write_val`), the middle state
is not required to satisfy the heap invariant.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

theorem gp_stNV {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {L : LocalsH → Prop} {P : Gam → Prop}
    {DB T BR V1 V2 : BitVec 64} {e1 e2 : ExpHOL 64} {K : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : ∀ m, L m → m.lookup (nm "br") = some (.val (.word BR)))
    (hv1 : ∀ s : State σ, L s.locals → ev s e1 = some (.val (.word V1)))
    (hv2 : ∀ s : State σ, L s.locals → ev s e2 = some (.val (.word V2)))
    (hP : ∀ Γ, P Γ → BrO p0 Γ BR ∧ Hooks.VInR Types.tVAL Γ V1 V2)
    (hK : HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ)) K Q) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ))
      (.seq (.store (.op .add [lv (nm "br"), cw 160]) e1)
        (.seq (.store (.op .add [lv (nm "br"), cw 168]) e2) K)) Q := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ s : State σ,
      GI (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ) s ∧
      t = { s with memory := Struct.upd s.memory (BR + BitVec.ofNat 64 (8 * 20)) V1 })
    (hoareG_store fun s hs hp w v mem hw hv hmem => ⟨rfl, s, hp, ?_⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · obtain ⟨hL, -⟩ := hp
    rw [ev_add_cw (hx _ hL) 160] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv1 s hL] at hv
    cases hv
    have := Struct.store_word hmem
    rw [this, ← hw]
  · refine hoareG_seq (R := fun r t => r = none ∧
        GI (aB vs s0 Γ0 p0) L
          (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ) t) ?_
      (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pre hK (fun t _ h => h.2))
    refine hoareG_store fun t ht hR w v mem hw hv hmem => ?_
    obtain ⟨-, s, ⟨hL, Γ, q, he, hh, hsc, hE⟩, rfl⟩ := hR
    have hw2 := ev_add_cw (s := { s with memory := Struct.upd s.memory (BR + BitVec.ofNat 64 (8 * 20)) V1 })
      (hx _ hL) 168
    rw [hw2] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv2 { s with memory := Struct.upd s.memory (BR + BitVec.ofNat 64 (8 * 20)) V1 } hL] at hv
    cases hv
    have hm2 := Struct.store_word hmem
    subst hw
    obtain ⟨⟨o, ho, hb, ht, hfr⟩, hVin⟩ := hP Γ hE.2.2
    have hvs : Hooks.ValSlot o.ty 20 := Or.inr ⟨ht, rfl⟩
    have hhs := hh
    have hG0 := hh.1
    obtain ⟨hG, hps, hmono, hext, hnf, hm0, hpg, hng⟩ := hh
    obtain ⟨pp, hpp, hord0, hL0, hrest⟩ := hG
    have hpq : q = pp := by rw [hps] at hpp; exact Option.some.inj hpp
    have hord : q.Ordered := hpq ▸ hord0
    have hL1 : Layout Types.guestC q Γ := hpq ▸ hL0
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hL1.1 o ho).2.2.2.1
    obtain ⟨hs20, hs21⟩ := Hooks.valSlot_has hvs rfl hsz
    obtain ⟨hb1, hb2⟩ := node_below rfl hhs ho (by rw [ht]; decide)
    obtain ⟨-, -, -, -, o5, -⟩ := hord
    have hal := (hL1.1 o ho).1
    have e20 : (o.cell 20).toNat = o.base.toNat + 160 := by
      unfold Obj.cell; exact Spec.Mpt.Dec.toNat_add_lt (by unfold Obj.HasSlot at hs20; omega)
    have e21 : (o.cell 21).toNat = o.base.toNat + 168 := by
      unfold Obj.cell; exact Spec.Mpt.Dec.toNat_add_lt (by unfold Obj.HasSlot at hs21; omega)
    have c20 : BR + BitVec.ofNat 64 (8 * 20) = o.cell 20 := by rw [Obj.cell, hb]
    have c21 : BR + BitVec.ofNat 64 168 = o.cell 21 := by rw [Obj.cell, hb]
    have hm2' : mem = Struct.upd (Struct.upd s.memory (o.cell 20) V1) (o.cell 21) V2 := by
      rw [← c20, ← c21]; exact hm2
    clear hm2
    have hne : o.cell 21 ≠ o.cell 20 := fun e => by
      have := congrArg BitVec.toNat e; omega
    have hbo : BR.toNat = o.base.toNat := by rw [← hb]
    unfold Obj.HasSlot at hs20 hs21
    have inO20 : InObj Γ (o.cell 20).toNat := ⟨o, ho, by unfold Obj.lo; omega, by unfold Obj.hi; omega⟩
    have inO21 : InObj Γ (o.cell 21).toNat := ⟨o, ho, by unfold Obj.lo; omega, by unfold Obj.hi; omega⟩
    unfold Obj.lo at hal
    have fo20 : (aB vs s0 Γ0 p0).Foot (o.cell 20) :=
      Or.inr (Or.inr (Or.inl (hfr (o.cell 20) ⟨by rw [e20]; omega, by rw [e20, ← hbo]; omega,
        by rw [e20, ← hbo]; omega⟩)))
    have fo21 : (aB vs s0 Γ0 p0).Foot (o.cell 21) :=
      Or.inr (Or.inr (Or.inl (hfr (o.cell 21) ⟨by rw [e21]; omega, by rw [e21, ← hbo]; omega,
        by rw [e21, ← hbo]; omega⟩)))
    have hmod : ModifiesOnly (fun a => a = o.cell 20 ∨ a = o.cell (20 + 1)) s.memory mem := by
      intro x hx
      rw [hm2', Struct.upd_ne (fun e => hx (Or.inr e)), Struct.upd_ne (fun e => hx (Or.inl e))]
    have hV : Hooks.VInR Types.tVAL Γ (rd mem (o.cell 20)) (rd mem (o.cell (20 + 1))) := by
      rw [hm2', Struct.rd_upd_ne hne.symm, Struct.rd_upd_self, Struct.rd_upd_self]
      exact hVin
    have hGam := Hooks.gamOK_of_layout hL1
    have hnode := Hooks.valSlot_node hvs
    have hn20 := rcell_ne_node hGam ho (A := o.cell 20) hnode (by unfold Obj.lo; omega) (by unfold Obj.hi; omega)
    have hn21 := rcell_ne_node hGam ho (A := o.cell 21) hnode (by unfold Obj.lo; omega) (by unfold Obj.hi; omega)
    have hhi : p0.sp < 2 ^ 64 := by omega
    have hF2 : FrG (aB vs s0 Γ0 p0) Γ q mem q.sp p0.sp T := by
      rw [hm2']
      exact frG_upd_out hhi (by omega) (Or.inl inO21)
        (frG_upd_out hhi (by omega) (Or.inl inO20) hE.1)
    have hND2 : Hooks.NdbR Γ mem DB := by
      rw [hm2']
      exact ndbR_upd (ndbR_upd hE.2.1 hn20) hn21
    refine ⟨rfl, hL, Γ, q, he, ?_, hsc, hF2, hND2, hE.2.2⟩
    refine ⟨Hooks.G_write_val (s := s) hG0 ho hvs hmod hV, hps, hmono, hext, hnf, ?_, hpg, hng⟩
    intro x hx
    have h1 : mem x = s.memory x := hmod x (fun hD => by
      rcases hD with rfl | rfl
      · exact hx fo20
      · exact hx fo21)
    exact h1.trans (hm0 x hx)

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gp_stNV

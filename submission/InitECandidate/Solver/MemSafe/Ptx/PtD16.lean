import InitECandidate.Solver.MemSafe.Ptx.PtD15

/-!
# F3e: `hdecAllocF2`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **`var rn = alloc(e); k`**: a fresh heap block of `n` bytes (not yet a `Γ` object). -/
theorem hdecAllocF2 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS} (hQT : ResIns rn QT) {e : ExpHOL 64} {n : BitVec 64} {k : ProgHOL 64}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) (hn0 : 0 < n.toNat)
    (PB : List (BitVec 64 × Nat))
    (hPB : ∀ b ∈ PB, S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2)
    (hk : ∀ w : BitVec 64,
      Hoare σ guestCtx (PA E (En.set rn (.val (.word w)))
        (addF S (Fct.fbuf w n.toNat :: Fct.prop (BlkP w n.toNat) ::
          PB.map (fun b => Fct.prop (b.1.toNat + b.2 ≤ w.toNat))))) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [e] k) QT := by
  refine hdecCallC2 hQT tab_alloc
    (callOK_any csOK_nil (by simp) rfl tab_alloc_ok ?_ hGl) (allocSpec_alloc guestCtx_code)
    (fun v => fun f => ∃ w, v = .val (.word w) ∧ (f = Fct.fbuf w n.toNat ∨ f = Fct.prop (BlkP w n.toNat) ∨
          ∃ b ∈ PB, f = Fct.prop (b.1.toNat + b.2 ≤ w.toNat))) ?_ ?_
  · intro s hs vs hvs
    obtain ⟨v, rfl, -⟩ := evs_single hvs
    rfl
  · intro s vs callee v st D Γ Γ' p p' hpa hvs hr hL hstep hrun hc hR2 hsh
    obtain ⟨v0, rfl, hv0⟩ := evs_single hvs
    have hn := he s hpa v0 hv0
    subst hn
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) w rfl (by simp [flattenHOL])
    obtain ⟨x, hx, hfb⟩ := hret
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
    subst hx
    rw [Nat.one_mul, Nat.add_zero] at hfb
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans (ptRun_ptrs hr)
    obtain ⟨-, -, p'', hp'', hord'', -, hq⟩ := hR2 (by simp [Good]) n p rfl hpe (ptRun_ord hr)
    obtain ⟨q, hqo, -, hlive, -⟩ := hq _ rfl
    have hpp : p'' = p' := Option.some.inj (hp''.symm.trans (hc.2.1))
    subst hpp
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hqo
    subst hqo
    obtain ⟨hl1, hl2⟩ := hlive
    have hhp := hord''.2.1
    intro f ⟨w', hw', hf⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
    subst hw'
    rcases hf with rfl | rfl | ⟨b, hb, rfl⟩
    · exact freshBuf_anchor (ptRun_mono hr) hfb
    · exact ⟨hfb.1, hl1, by omega⟩
    · -- the new block lies above the allocator pointer at the call
      have hord0 := ptRun_ord0 hr
      have hordp := ptRun_ord hr
      have hf0 := (hfb.2 w ⟨hfb.1, by omega, by omega⟩).1
      obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hordp
      obtain ⟨q1, q2, q3, q4, q5, q6, q7, q8⟩ := hord''
      have hpw : p.hp ≤ w.toNat := by
        unfold Fresh at hf0
        rcases hf0 with ⟨h1, -⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
        · exact h1
        · omega
        · omega
      obtain ⟨hb1, hb2, hb3, hb4⟩ := hPB b hb
      have := fbuf_end_le hL hord0 ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ hb1 hb2 hb3 hb4
      show b.1.toNat + b.2 ≤ w.toNat
      omega
  · intro v hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_pre (hk w) fun t _ ht => pa_mono ht (fun x v h => h) ?_
    intro f hf
    rcases hf with hf | hf
    · exact Or.inl hf
    · rcases List.mem_cons.mp hf with hf | hf
      · exact Or.inr ⟨w, rfl, Or.inl hf⟩
      rcases List.mem_cons.mp hf with hf | hf
      · exact Or.inr ⟨w, rfl, Or.inr (Or.inl hf)⟩
      · obtain ⟨b, hb, hbf⟩ := List.mem_map.mp hf
        exact Or.inr ⟨w, rfl, Or.inr (Or.inr ⟨b, hb, hbf.symm⟩)⟩

end InitECandidate.Solver.MemSafe.Ptx

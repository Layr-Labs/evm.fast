import InitECandidate.Solver.MemSafe.Eb.Tail8
import InitECandidate.Solver.MemSafe.Eb.PartK

/-!
# `execute_block`: `var x = f(args); k` from a heap-part (`keepG`) anchored state
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section decCallk
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

theorem hdecCallRk {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → FS)
    (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PA E (En.set rn v) (fun g => S g ∨ NF v g)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hoare_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine hdecCallK hQT (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
  refine hoare_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

end decCallk

end InitECandidate.Solver.MemSafe.Eb

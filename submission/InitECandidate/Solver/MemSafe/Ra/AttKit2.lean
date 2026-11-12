import InitECandidate.Solver.MemSafe.Ra.AttKit1

/-!
# `run_attempt`: walk combinators with an extra memory predicate (`PAX` over `Rm`)

`Rm RM Γ p u := RM Γ p u.memory`: an extra predicate of the typing, the allocator pointers and the memory (so locals-insensitive).
`cw_decCallX`: `var rn = f(args); k` from a `PAX` state to a `PAX` state with a new extra predicate. `cw_callXO`: `f(args);` from `PAX` to `PA`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- An extra predicate on the typing, the pointers and the memory. -/
def Rm (RM : Gam → Ptrs → Mem → Prop) : Gam → Ptrs → State σ → Prop := fun Γ p u => RM Γ p u.memory

theorem pax_of_pa {E : EbE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) :
    PAX E En S (Rm (fun _ _ _ => True)) u := by
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := h
  exact ⟨⟨Γ, p, hr, hL, trivial⟩, hlk⟩

/-- Re-anchor a `PAX` state at the heap part of the typing, the extra predicate carried by `hRk`. -/
theorem pax_hpart {E : EbE σ} {En : Env} {S : FS} {RM : Gam → Ptrs → Mem → Prop} {u : State σ} (hK : HypKeepG σ)
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hRk : ∀ Γ p m, RM Γ p m → RM (keepG Γ) p m)
    (h : PAX E En S (Rm RM) u) : PAX E En S (Rm (fun Γ p m => CPre Γ ∧ RM Γ p m)) u := by
  obtain ⟨⟨Γ, p, hr, hL, hR⟩, hlk⟩ := h
  obtain ⟨hr', hC⟩ := ebRun_keepG hK hE0 hr
  exact ⟨⟨keepG Γ, p, hr', fun f hf => holds_keepG (hS f hf) (hL f hf), hC, hRk Γ p _ hR⟩, hlk⟩

section decx
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop} {RM : Gam → Ptrs → Mem → Prop}

theorem cw_decCallX {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {Bf Bk : Nat} {PreC : List (ValueHOL 64) → State σ → Prop}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → FS)
    (RM' : ValueHOL 64 → Gam → Ptrs → Mem → Prop)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → PAX E En S (Rm RM) s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : CallOblX E En S (Rm RM) args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), PAX E En S (Rm RM) s → evs s args = some vs → EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → RM Γ p s.memory →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v) ∧ RM' v Γ' p' st.memory)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      CW (PAX E (En.set rn v) (fun g => S g ∨ NF v g) (Rm (RM' v))) k Bk QT) :
    CW (PAX E En S (Rm RM)) (.decCall rn sh f args k) (1 + Bf + Bk) QT := by
  refine cw_decCallK hQT (FunSpec.and hf hg) hc hpre ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAX E En S (Rm RM) s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨hN, hR'⟩ := hnew s vs callee v st Γ Γ' p p' hpa hvs hr hL hC hstp hq hsh
  refine cw_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_, hR'⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

/-- `f(args);` from a `PAX` state to a `PA` state. -/
theorem cw_callXO {k : ProgHOL 64} {Bf Bk : Nat} {PreC : List (ValueHOL 64) → State σ → Prop}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : FS)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → PAX E En S (Rm RM) s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : CallOblX E En S (Rm RM) args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), PAX E En S (Rm RM) s → evs s args = some vs → EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } NF)
    (hk : CW (PA E En (fun g => S g ∨ NF g)) k Bk QT) :
    CW (PAX E En S (Rm RM)) (.seq (.call (some (none, none)) f args) k) ((1 + Bf + 0) + Bk) QT := by
  refine cw_seq (P := PAX E En S (Rm RM)) (R := PA E En (fun g => S g ∨ NF g)) ⟨?_, ?_⟩ hk
  · exact Inv.costP_call (Pre := PreC) hc hpre (by intro _ _ _ _ h; cases h)
  · exact hn_callRx hf hg NF h hnew

end decx

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cw_decCallX
#print axioms InitECandidate.Solver.MemSafe.Att.cw_callXO

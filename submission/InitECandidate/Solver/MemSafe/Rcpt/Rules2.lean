import InitECandidate.Solver.MemSafe.Rcpt.RI3

set_option autoImplicit false

/-!
# More statement rules for the `RI` walk

* `hoareG_decCallSw`: `var x = f(args); k` where the continuation is proved under a stronger
  invariant `I' v` (it may mention the returned value `v`) that implies `I`.
* `hoareG_iteI`, `hoareG_storeByteRI`.
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
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem hoareG_decCallSw {I : State σ → Prop} {I' : ValueHOL 64 → State σ → Prop}
    (hS : IStable I) (hI'I : ∀ v t, I' v t → I t) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → IPre I L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hk : ∀ (s : State σ) vs v (st : State σ), InCtx s X → L s.locals → evs s args = some vs →
      I st → Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
        (IQ (I' v) (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (IPre I L) (.decCall rn sh f args k) (IQ I Lout Ret') := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx hsh
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hS hP.1 callee) (hpre s hs hP vs hvs callee) v rfl
    refine hoareG_conseq (hk s vs v st hs hP.2 hvs hI hRet hsh) (fun t _ ht => ?_) ?_
    · exact ht
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => ⟨hS (hI'I v _ (hq.2.1 hr).1) rfl rfl rfl rfl,
        hout _ _ hP.2 (hq.2.1 hr).2⟩, fun w hw => ⟨hS (hI'I v _ (hq.2.2 w hw).1) rfl rfl rfl rfl,
        (hq.2.2 w hw).2⟩⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

theorem hoareG_iteI {I : State σ → Prop} {c : ExpHOL 64} {c1 c2 : ProgHOL 64} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (h1 : HoareG σ X (IPre I L) c1 (IQ I L' Ret))
    (h2 : HoareG σ X (IPre I L) c2 (IQ I L' Ret)) :
    HoareG σ X (IPre I L) (.ite c c1 c2) (IQ I L' Ret) :=
  hoareG_ite (hoareG_pre h1 (fun s _ h => h.1)) (hoareG_pre h2 (fun s _ h => h.1))

theorem hoareG_storeByteRI {a : AwE σ} (hK : AwOK a) {Fl : Nat} {addr e : ExpHOL 64}
    {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s addr = some (.val (.word w)) →
      a.p0.hp ≤ w.toNat ∧ w.toNat < heapEnd) :
    HoareG σ X (IPre (RI a Fl) L) (.storeByte addr e) (IQ (RI a Fl) L Ret) := by
  refine hoareG_storeByte fun s hs hP w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  have hord := hK.hord
  have h8 : a.p0.hp % 8 = 0 := by unfold Ptrs.Ordered at hord; omega
  obtain ⟨g1, g2⟩ := haddr s hs hP.2 w ha
  exact ⟨nb_none, fun _ => ⟨ri_write hK hP.1 rfl rfl rfl hm
    (fun y hy => by
      rw [hy, byteAlign_toNat]
      omega), hP.2⟩, (fun _ h => nomatch h)⟩

end InitECandidate.Solver.MemSafe.Rcpt

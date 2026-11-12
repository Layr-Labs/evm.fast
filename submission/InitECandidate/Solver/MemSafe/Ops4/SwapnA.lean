import InitECandidate.Solver.MemSafe.Ops4.Mstore8
import InitECandidate.Solver.MemSafe.Ops3.Swap
import InitECandidate.Solver.MemSafe.Mod.Max
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# Ops4: pure callee specs for `op_swapn` / `op_exchange`

* `PureX`: a pure callee (memory and globals kept) that either returns a value with fact `R` or
  ends abnormally; `hoareG_kPureX`: `var x = f(args); k` on `GK` for such a callee;
* `pureR_code_imm` (value `<= 255`), `pureX_decode_single`, `pureR_max` (value `= max`).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Struct (PureR PureP pureR_of hoareG_ifRet)

variable {σ : Type} {X : Ctx 64}

def PureX (σ : Type) (X : Ctx 64) (f : MlS)
    (R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → t.memory = s.memory ∧ t.globals = s.globals ∧
    ((∃ v, r = .returned v ∧ R vs s v) ∨ Abn r))

def PureXP (s0 : State σ) (R : ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  t.memory = s0.memory ∧ t.globals = s0.globals ∧
    ((∃ v, r = some (.returned v) ∧ R v) ∨ ∃ r', r = some r' ∧ Abn r')

theorem pureX_of {f : MlS} {R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee →
        HoareG σ X (fun u => u = s0) body (PureXP s0 (R vs s0))) : PureX σ X f R := by
  intro vs body callee rs hl s hs hloc r hr hg
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  obtain ⟨hm, hgl, h3⟩ := this
  refine ⟨hm, hgl, ?_⟩
  rcases h3 with ⟨v, hv, hR⟩ | ⟨r', hr', habn⟩
  · exact Or.inl ⟨v, Option.some.inj hv, hR⟩
  · exact Or.inr (Option.some.inj hr' ▸ habn)

theorem pureX_of_pureR {f : MlS} {R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : PureR σ X f R) : PureX σ X f R := by
  intro vs body callee rs hl s hs hloc r hr hg
  obtain ⟨hm, hgl, v, rfl, hR⟩ := h vs body callee rs hl s hs hloc r hr hg
  exact ⟨hm, hgl, Or.inl ⟨v, rfl, hR⟩⟩

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`var rn = f(args); k`** for a pure callee that may also end abnormally. -/
theorem hoareG_kPureX {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Rv : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop} (hpf : PureX σ guestCtx f Rv)
    {P : State σ → Prop} {b' : Bool} {d : Nat} (hP0 : ∀ u, P u → KJ d u)
    (hk : ∀ u, P u → ∀ vs, evs u args = some vs → ∀ callee v (st : State σ),
      st.memory = u.memory → st.globals = u.globals → st.memaddrs = u.memaddrs → st.be = u.be →
      Rv vs (callEntryStateHOLFinite u callee) v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u.locals }) k
        (GQ (KJ) b')) :
    HoareG σ guestCtx P (.decCall rn sh f args k) (GQ (KJ) b') := by
  refine hoareG_decCall (FunSpec.and hpf (funSpec_dom f)) ?_ ?_
  · intro u _ hu vs hvs callee v st ⟨hR, hd⟩ _ hsh
    obtain ⟨hm, hg, hv'⟩ := hR (by simp [Good])
    rcases hv' with ⟨v', hv', hRv⟩ | habn
    · cases hv'
      exact hoareG_conseq (hk u hu vs hvs callee v st hm hg hd.1 hd.2 hRv hsh) (fun _ _ h => h)
        (fun r t _ _ hq => gq_loc kOK_KJ hq _)
    · exact absurd rfl (Struct.abn_ne_ret habn v)
  · intro u _ hu vs hvs callee r st ⟨hR, hd⟩ _ habn
    obtain ⟨hm, hg, hv'⟩ := hR (abn_good habn)
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ (hP0 u hu) hm hg hd.1 hd.2) (Nat.zero_le _)

end steps

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.pureX_of
#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_kPureX

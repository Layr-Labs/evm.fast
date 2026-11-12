import InitECandidate.Solver.MemSafe.Stor3.Store12
import InitECandidate.Solver.MemSafe.Stor3.Sd

set_option autoImplicit false

/-!
# Locals bookkeeping and the refund stores of `op_sstore` (sonnet-store3)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- `if warm == 0 { access_cost = 2100 }` from `access_cost = 100`. -/
theorem hl_iteAcc {K : Nat → State σ → Prop} (hK : KOK K) {b : Bool} {u0 : State σ}
    (hu : K (bd b) u0) (hg : u0.locals.lookup (nm "access_cost") = some (.val (.word 100))) :
    HoareG σ guestCtx (fun t => t = u0)
      (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
        (.assign .local (nm "access_cost") (cw 2100)) .skip)
      (fun ro t => ro = none ∧ K (bd b) t ∧
        (∃ g, t.locals.lookup (nm "access_cost") = some (.val (.word g)) ∧ 1 ≤ g.toNat) ∧
        ∀ x, x ≠ nm "access_cost" → t.locals.lookup x = u0.locals.lookup x) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_assign fun s _ hP v hv hvalid => ?_
    obtain ⟨rfl, -⟩ := hP
    rw [ev_cw, Option.some.injEq] at hv
    subst hv
    refine ⟨rfl, kok_loc hK hu _, ⟨_, lk_set_self _ _ _, by decide⟩, fun x hx => ?_⟩
    rw [lk_set_ne _ _ (Ne.symm hx)]
  · refine hoareG_skip fun s _ hP => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, hu, ⟨_, hg, by decide⟩, fun x _ => rfl⟩

/-- `if c { x = e }` (a local assignment of a word-valued `op`/const expression): `K` is kept, the other
locals are kept. -/
theorem hl_iteAsg {K : Nat → State σ → Prop} (hK : KOK K) {b : Bool} {u0 : State σ}
    (hu : K (bd b) u0) (c : ExpHOL 64) (x : MlS) (e : ExpHOL 64) :
    HoareG σ guestCtx (fun t => t = u0) (.ite c (.assign .local x e) .skip)
      (fun ro t => ro = none ∧ K (bd b) t ∧
        ∀ y, y ≠ x → t.locals.lookup y = u0.locals.lookup y) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_assign fun s _ hP v hv hvalid => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, kok_loc hK hu _, fun y hy => by rw [lk_set_ne _ _ (Ne.symm hy)]⟩
  · refine hoareG_skip fun s _ hP => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, hu, fun y _ => rfl⟩

/-- `if c { st ev + 96, e }` with `e` a word-valued operation: `GK` is kept, the locals are kept. -/
theorem hl_iteSt {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u0) (cnd : ExpHOL 64)
    (o : BinOp) (a b : ExpHOL 64) :
    HoareG σ guestCtx (fun t => t = u0)
      (.ite cnd (stG "ev" 96 (.op o [a, b])) .skip)
      (fun ro t => ro = none ∧ GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t ∧
        t.locals = u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine hoareG_ite ?_ ?_
  · refine hoareG_stG fun s _ hP G v hG hv => ?_
    obtain ⟨rfl, -⟩ := hP
    obtain ⟨x, rfl⟩ := ev_op_word hv
    refine ⟨x, rfl, fun _ => ⟨rfl, ?_, rfl⟩⟩
    have he := gk_gword hfs hu
    rw [he, Option.some.injEq] at hG
    subst hG
    exact gk_store12 hF hfs hu x
  · refine hoareG_skip fun s _ hP => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, hu, rfl⟩

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_iteAcc
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_iteAsg
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_iteSt

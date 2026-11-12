import InitECandidate.Solver.MemSafe.Stor3.SsLib
import InitECandidate.Solver.MemSafe.Stor3.Sload
import InitECandidate.Solver.MemSafe.Stor3.Set
import InitECandidate.Solver.MemSafe.Stor3.Gas

set_option autoImplicit false

/-!
# `op_sstore`'s step spec (sonnet-store3)

Like `op_sload`: the `GK` run is rebased at `var target = ...` (nothing charged before it); the rest runs
in the rebased tracker, with `charge_gas(access_cost)` (`access_cost ∈ {100, 2100}`) giving the strict
drop at the return.  Open hypotheses: `get_storage`'s and `get_storage_original`'s summaries (from the
storage chain) and `SetStorageSumm`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def gsoE : GEnv := ⟨[], [nm "get_storage_original"], [Hooks.gJn]⟩
def ssE : GEnv := ⟨[], [nm "set_storage"], [Hooks.gJn]⟩

theorem gsoE_ok : PlainOKB gsoE (nm "get_storage_original") Band3.gsoSig Band3.rpsrCaps 2 := by
  decide +kernel
theorem ssE_ok : PlainOKB ssE (nm "set_storage") ssSig ssCaps 3 := by decide +kernel
theorem gso_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "get_storage_original") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem ss_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "set_storage") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

theorem s3_max : callCl s3E false (nm "max")
    [lv (nm "access_cost"), .op .add [cw 0x8fc, cw 1]] = some false := by decide +kernel
theorem s3_chk : callCl s3E false (nm "check_gas") [lv (nm "mx")] = some false := by decide +kernel
theorem s3_chgsub : callCl s3E true (nm "charge_gas")
    [.op .sub [lv (nm "gas_cost"), lv (nm "access_cost")]] = some true := by decide +kernel
theorem s3_ssTail : gc s3E true (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0))) = some true := by
  decide +kernel

/-- `[target, key, new_value]` fits `[buf 20, buf 32, any]`. -/
theorem ao_ss {u : State σ} {T w : BitVec 64}
    (hT : u.locals.lookup (nm "target") = some (.val (.word T)))
    (hk : u.locals.lookup (nm "key") = some (.val (.word w)))
    {vs : List (ValueHOL 64)}
    (hvs : evs u [lv (nm "target"), lv (nm "key"), lv (nm "new_value")] = some vs)
    {Γ1 : Gam} {p1 : Ptrs} (hB : BufOK guestC Γ1 p1 T.toNat 20)
    (hB2 : BufOK guestC Γ1 p1 w.toNat 32) :
    ArgsOK guestC Γ1 p1 ssSig.params vs := by
  obtain ⟨v1, vs1, rfl, hv1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, hv2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, hv3, hr3⟩ := evs_cons_inv hr2
  rw [evs_zero hr3]
  rw [ev_lv, hT, Option.some.injEq] at hv1
  rw [ev_lv, hk, Option.some.injEq] at hv2
  subst hv1 hv2
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [ssSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, hB⟩
  · simp only [ssSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, hB2⟩
  · simp only [ssSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    trivial
  · simp [ssSig] at hpt

def LkTK (T w : BitVec 64) (l : Locs) : Prop :=
  l.lookup (nm "target") = some (.val (.word T)) ∧ l.lookup (nm "key") = some (.val (.word w))

theorem lkTK_set {T w : BitVec 64} {n : MlS} (h1 : n ≠ nm "target") (h2 : n ≠ nm "key")
    (v : ValueHOL 64) (t : State σ) (h : LkTK T w t.locals) :
    LkTK T w (setVarHOLFinite n v t).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2⟩

theorem lkTK_loc {T w : BitVec 64} {t u : State σ} (hl : t.locals = u.locals)
    (h : LkTK T w u.locals) : LkTK T w t.locals := by rw [hl]; exact h

theorem lkTK_oth {T w : BitVec 64} {x : MlS} {t u : State σ} (h1 : x ≠ nm "target")
    (h2 : x ≠ nm "key") (ho : ∀ y, y ≠ x → t.locals.lookup y = u.locals.lookup y)
    (h : LkTK T w u.locals) : LkTK T w t.locals :=
  ⟨by rw [ho _ (Ne.symm h1)]; exact h.1, by rw [ho _ (Ne.symm h2)]; exact h.2⟩

/-- Sequencing two locals-preserving, `Kd`-preserving statements. -/
theorem hseq_loc {Kd : State σ → Prop} {u : State σ} {p q : ProgHOL 64}
    (h1 : HoareG σ guestCtx (fun t => t = u) p
      (fun ro t => ro = none ∧ Kd t ∧ t.locals = u.locals))
    (h2 : ∀ u1 : State σ, Kd u1 → u1.locals = u.locals →
      HoareG σ guestCtx (fun t => t = u1) q
        (fun ro t => ro = none ∧ Kd t ∧ t.locals = u1.locals)) :
    HoareG σ guestCtx (fun t => t = u) (.seq p q)
      (fun ro t => ro = none ∧ Kd t ∧ t.locals = u.locals) :=
  hoareG_seq (R := fun ro t => ro = none ∧ Kd t ∧ t.locals = u.locals) h1
    (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u1 hu1 => hoareG_conseq (h2 u1 hu1.2.1 hu1.2.2) (fun _ _ h => h)
      (fun r t _ _ h => ⟨h.1, h.2.1, h.2.2.trans hu1.2.2⟩))

end InitECandidate.Solver.MemSafe.Stor3

import InitECandidate.Solver.MemSafe.Ptx.PmcFun
import InitECandidate.Solver.MemSafe.Frames.IcsWire
import InitECandidate.Solver.MemSafe.Bal.ListKit

/-!
# F3c: `process_create_message`'s post, definitions and the two hypotheses

* `HypPmM σ M`: `process_message`'s post `PmRL` with two more facts main discharges from
  `Entry2.pm_post_closed`: the root frame's `EV_MSG` is the message handed in (`fld t.memory child 112 = msg`),
  and `JrNZ t`.
* `HypCfL σ`: `create_finish`'s summary with a footprint that also excludes the `prot` cells of list-typed
  objects (what `cf_guestR` gives once package L widens `msgTys` with the list types).
* `CS`: the child's facts carried across the callees after `process_message` returns.
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
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

/-- `PmRL` with `JrNZ` (package F3m: the `EV_MSG` link is no longer needed). -/
def PmRLm (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (∃ msg, vs = [.val (.word msg)] ∧ FoPre M msg Γ s) →
    ∀ v, r = .returned v → ∃ child msg, vs = [.val (.word msg)] ∧ v = .val (.word child) ∧
      PmFinL Γ s child t ∧ JrNZ t

def HypPmM (σ : Type) (M : Nat) : Prop :=
  FunSpec σ guestCtx (nm "process_message") (PmRLm (σ := σ) M)

theorem hypPm_of_M {M : Nat} (h : HypPmM σ M) : HypPm σ M :=
  FunSpec.mono h fun vs s r t hR Γ hG hP v hv => by
    obtain ⟨child, msg, -, hv', hfin, -⟩ := hR Γ hG hP v hv
    exact ⟨child, hv', hfin⟩

/-- Local-insensitivity of `PmFinL`. -/
theorem pmFinL_congr {Γe : Gam} {se : State σ} {child : BitVec 64} {t t' : State σ}
    (hm : t'.memory = t.memory) (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs)
    (hbe : t'.be = t.be) (h : PmFinL Γe se child t) : PmFinL Γe se child t' := by
  obtain ⟨h1, ⟨Γ, hG, ho, hk, hb, ⟨rec, hgp⟩, hlog⟩, ⟨e, he, he'⟩, ⟨c, hc, hc'⟩⟩ := h
  refine ⟨by rw [hm]; exact h1, ⟨Γ, G_congr Hooks.guestHooksR_lawful hm hg hd hbe hG, ho,
    keepH_congr rfl hg hk, bkeep_congr rfl hm hb, ⟨rec, fun p hp => by
      rw [hm]; exact hgp p ((ptrsOf_congr hg).symm.trans hp)⟩,
    fun p hp => by rw [hm]; exact hlog p ((ptrsOf_congr hg).symm.trans hp)⟩,
    ⟨e, by rw [gword_congr hg]; exact he, he'⟩, ⟨c, by rw [gword_congr hg]; exact hc, hc'⟩⟩

/-! ## List cells -/

/-- The frame log-list types (package F3m: list headers with element size 8, i.e. `tLSTh`/`tLSTs`, their arrays,
and the log records); all of them are in `Frames.msgTys`, so `create_finish`'s footprint `PWtopM` misses them. -/
def LstTy (t : Nat) : Prop := (t ∈ Hooks.lstTys ∧ Hooks.lstE t = 8) ∨ Hooks.IsLstA t ∨ t = tLOG

/-- Every cell of a list-typed object of `Γ` (all `prot`) reads the same in `m'` as in `m`. -/
def LstKeep (Γ : Gam) (m m' : Mem) : Prop :=
  ∀ o ∈ Γ, LstTy o.ty → ∀ k, o.HasSlot k → rd m' (o.cell k) = rd m (o.cell k)

def NoLstCell (Γ : Gam) (a : BitVec 64) : Prop := ∀ o ∈ Γ, LstTy o.ty → ¬ InO o a

def PWtopL (ks : List Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (a : BitVec 64) : Prop :=
  PWtopM tEV tCK ks vs s Γ a ∧ NoLstCell Γ a

/-- **`create_finish` with a footprint that excludes the `prot` cells of list-typed objects**
(`cf_guestR` after package L widens `Frames.msgTys` with the list types: `NoMsgCell` then gives
`NoLstCell`). Main discharges it. -/
def HypCfL (σ : Type) : Prop :=
  SumSpecO σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "create_finish") (sgA 2 [Hooks.gJn])
    (CfPre guestC tEV) (PWtopL gasKs) CfQ

theorem tLOG_prot (k : Nat) : (guestC.ty tLOG).slot k = .prot := by
  have h : guestC.ty tLOG = default := rfl
  rw [h]; rfl

theorem lstTy_prot {t : Nat} (h : LstTy t) (k : Nat) : (guestC.ty t).slot k = .prot := by
  rcases h with ⟨h, -⟩ | h | h
  · exact Hooks.lst_prot t h k
  · exact Hooks.lstA_prot h k
  · subst h; exact tLOG_prot k

theorem lstTy_nst {t : Nat} (h : LstTy t) : guestSt t = false := by
  rcases h with ⟨h, -⟩ | h | h
  · simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
    rcases h with rfl | rfl | rfl | rfl | rfl <;> decide
  · rcases h with rfl | rfl <;> decide
  · subst h; decide

theorem lstTy_msgTys {t : Nat} (h : LstTy t) : t ∈ msgTys := by
  rcases h with ⟨h, he⟩ | h | h
  · simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
    rcases h with rfl | rfl | rfl | rfl | rfl <;> revert he <;> decide
  · rcases h with rfl | rfl <;> decide
  · subst h; decide

theorem lstKeep_of_protKeep {Γ : Gam} {s t : State σ} (hk : ProtKeep guestC (nst guestSt Γ) s t) :
    LstKeep Γ s.memory t.memory := by
  intro o ho hty k hk'
  have h := hk _ ⟨o, mem_nst.mpr ⟨ho, lstTy_nst hty⟩, k, hk', lstTy_prot hty k, rfl⟩
  unfold rd
  rw [h]

/-- A summary core whose extra footprint avoids list cells keeps them. -/
theorem lstKeep_of_core {sg : Sig} {PWx : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg PWx Γ s vs r t Γ' p p')
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    (hpw : ∀ a, ProtCell guestC Γ a → PWx a → ¬ (∃ o ∈ Γ, LstTy o.ty ∧ InO o a)) :
    LstKeep Γ s.memory t.memory := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  intro o ho hty k hk'
  have hpc : ProtCell guestC Γ (o.cell k) := ⟨o, ho, k, hk', lstTy_prot hty k, rfl⟩
  have h := sumCore_protW (PW := fun a => ¬ (∃ o ∈ Γ, LstTy o.ty ∧ InO o a)) hc hG hac hpw
    _ hpc (fun hn => hn ⟨o, ho, hty, inO_cell hord hL ho (k := 8 * k) (by unfold Obj.HasSlot at hk'; omega)⟩)
  unfold rd
  rw [h]

/-! ## The child's facts -/

/-- The child's facts after `process_message` returned, kept across the callees that follow. -/
def CS (Γ0 : Gam) (s0 : State σ) (child : BitVec 64) (u : State σ) : Prop :=
  ∃ Γ p rec, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧ KB Γ0 Γ s0 u ∧
    (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) ∧ GP Γ u.memory p (child, rec) ∧
    LogsIn Γ u.memory p.hp child ∧ JrNZ u

end InitECandidate.Solver.MemSafe.Ptx

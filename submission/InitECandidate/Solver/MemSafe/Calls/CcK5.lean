import InitECandidate.Solver.MemSafe.Calls.CcGc

/-!
# `op_callcode`: the insufficient-balance branch and the block from `get_account` (frames15)

* `cc_ins`: `stack_push(0); set_retdata(evm_empty, 0); st ev+64, GAS + mcg.1;
  st ev+72, STATE + reservoir` ends in `KF1` (`d ≥ mcg.1 + 1`);
* **`cc_k5`**: `get_account(to)`, `u256_lt`, `started = 0`, the two branches and the tail, from
  `KCall Bs d` with `to ∈ Bs` and `d ≥ mcg.1 + 3`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs

/-- **The insufficient-balance branch** (no refund). -/
theorem cc_ins (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {Bs : List (BitVec 64)} {d : Nat}
    {u0 : State σ} (hu : KC Bs d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {M0 M1 : BitVec 64} (l5 : xs.lookup (nm "mcg") = some (wv [M0, M1]))
    (hd : M1.toNat + 1 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ccIns (QJ Γ0 s0) := by
  have hQ := postOK_qj (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  unfold ccIns
  refine hq_tabC hfs hQ.toC (fun g h => h) spC_mem sp_fpC callE_sp hu
    (fun vs hvs Γ1 p1 _ _ _ _ => argsOK_any (by simp [spSgC]) (by rw [evs_len hvs]; rfl))
    fun st1 hk1 _ _ => ?_
  refine hoareG_dec fun s _ hs v _ _ => ?_
  subst s
  refine hoareG_conseq (Q := QJ Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => hQ.loc r t _ hq)
  have hL1 := la_set (s := { st1 with locals := u0.locals }) hL (nm "empty") v
  refine hq_sd hfs hQ.toC (kcall_congr hk1 rfl rfl rfl rfl) fun st2 hk2 => ?_
  refine hq_st64B hfs (y := M1) (kcall_loc hk2 _) ?_ hd fun st3 hk3 hl3 => ?_
  · intro v' hv'
    obtain ⟨w, rfl⟩ := ev_op_word hv'
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hv'
    obtain ⟨hy', -⟩ := ev_gLoad_eq (gk_gword hfs (kcall_gk (kcall_loc hk2 _))) hy
    cases hy'
    rw [Struct.ev_wv_word (x := nm "mcg") (ws := [M0, M1]) (i := 1) ?_ (by simp)] at hz
    · cases hz
      rfl
    · exact hL1 _ _ (lk_cons_ne (by decide) l5)
  refine hoareG_unseq (hq_stB hfs (j := 9) rfl (by simp [evDriverSlots]) (by decide) (by decide)
    (by decide) hk3 (fun v' hv' => ev_op_word hv') (kont := .skip) fun x st4 hk4 _ _ => ?_)
  exact hoareG_skip fun t _ ht => Or.inl ⟨rfl, by rw [ht]; exact kf1_of_kcall hk4 (by omega)⟩

/-- **`ccK5`**: `get_account(to)`, `u256_lt`, `started = 0`, both branches, the tail. -/
theorem cc_k5 (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {Bs : List (BitVec 64)} {d : Nat}
    {u0 : State σ} (hu : KC Bs d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 M0 M1 R CA C0 C1 D0 D1 D2 TO : BitVec 64}
    {vval : ValueHOL 64}
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l5 : xs.lookup (nm "mcg") = some (wv [M0, M1]))
    (l6 : xs.lookup (nm "reservoir") = some (.val (.word R)))
    (l7 : xs.lookup (nm "value") = some vval)
    (lto : xs.lookup (nm "to") = some (.val (.word TO))) (hTO : TO ∈ Bs)
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l11 : xs.lookup (nm "code") = some (wv [C0, C1]))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ (fld u0.memory e 32).toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld u0.memory e 32).toNat)
    (hcn : C1.toNat + 63 < 2 ^ 64) (hd : M1.toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ccK5 (QCall Γ0 s0) := by
  unfold ccK5
  refine hq_tab hfs ha0 (fun g h => h) ga_mem ga_fp callE_ga (funSpec_true _) hu ?_
    fun vs hvs callee v st hk1 hkE hk112 _ _ => ?_
  · intro vs hvs Γ1 p1 hrun hch hE hB
    rw [evs_cons (la_ev hL lto) evs_nil] at hvs
    cases hvs
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | i
    · simp only [gaSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨_, rfl, hB TO hTO⟩
    · simp [gaSg] at hpt
  have hL1 := la_set (s := { st with locals := u0.locals }) hL (nm "sender") v
  refine hq_tab hfs ha0 (fun g h => h) ultC_mem ult_fpC callE_ult (funSpec_true _)
    (kcall_congr hk1 rfl rfl rfl rfl) (fun vs hvs Γ1 p1 _ _ _ _ =>
      argsOK_any (by simp [ultSgC]) (by rw [evs_len hvs]; rfl))
    fun vs2 hvs2 callee2 v2 st2 hk2 hkE2 hk112' _ _ => ?_
  have hL2 := la_set (s := { st2 with locals := (setVarHOLFinite (nm "sender") v
    { st with locals := u0.locals }).locals }) hL1 (nm "insufficient") v2
  refine hoareG_dec fun s _ hs v3 hv3 _ => ?_
  subst s
  rw [ev_cw] at hv3
  cases hv3
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => qcall_loc hq _)
  have hL3 := la_set hL2 (nm "started") (.val (.word (BitVec.ofNat 64 0)))
  have hk3 := kcall_congr (t := setVarHOLFinite (nm "started") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "insufficient") v2 { st2 with locals := (setVarHOLFinite (nm "sender") v
      { st with locals := u0.locals }).locals })) hk2 rfl rfl rfl rfl
  have k2 : ∀ j ∈ evProtSlots, fld st2.memory e (8 * j) = fld u0.memory e (8 * j) := fun j hj =>
    (hkE2 j hj (fun h => by simp [evKs] at h)).trans (hkE j hj (by rw [evKs_ga]; simp))
  have h16 : fld st2.memory e 16 = fld u0.memory e 16 := k2 2 (by simp [evProtSlots])
  have h232 : fld st2.memory e 232 = fld u0.memory e 232 := k2 29 (by simp [evProtSlots])
  have h32 : fld st2.memory e 32 = fld u0.memory e 32 := k2 4 (by simp [evProtSlots])
  refine hoareG_seq (R := QJ Γ0 s0) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · refine hoareG_pre (cc_ins hfs ha0 hk3 hL3
      (lk_cons3 l5 (by decide) (by decide) (by decide)) (by omega)) fun t _ h => h.1
  · refine hoareG_pre (cc_gc hP hfs ha0 hk3 hL3
      (lk_cons3 l1 (by decide) (by decide) (by decide)) (lk_cons3 l2 (by decide) (by decide) (by decide))
      (lk_cons3 l3 (by decide) (by decide) (by decide)) (lk_cons3 l4 (by decide) (by decide) (by decide))
      (lk_cons3 l5 (by decide) (by decide) (by decide)) (lk_cons3 l6 (by decide) (by decide) (by decide))
      (lk_cons3 l7 (by decide) (by decide) (by decide)) (lk_cons3 lto (by decide) (by decide) (by decide))
      hTO (lk_cons3 l10 (by decide) (by decide) (by decide))
      (lk_cons3 l11 (by decide) (by decide) (by decide)) (lk_cons3 l12 (by decide) (by decide) (by decide))
      (by show (fld st2.memory e 16).toNat < (fld st2.memory e 232).toNat; rw [h16, h232]; exact hsp)
      (fun hz => by show _ ≤ (fld st2.memory e 32).toNat; rw [h32]; exact hout hz)
      (fun hz => by show _ ≤ (fld st2.memory e 32).toNat; rw [h32]; exact hin hz) hcn hd)
      fun t _ h => h.1
  · intro t ht hJ hg
    rcases hJ with ⟨-, hkf⟩ | ⟨h', -⟩
    · exact hq_tail hkf t ht rfl hg
    · exact absurd rfl h'

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_ins
#print axioms InitECandidate.Solver.MemSafe.Calls.cc_k5

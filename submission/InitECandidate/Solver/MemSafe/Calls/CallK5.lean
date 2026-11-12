import InitECandidate.Solver.MemSafe.Calls.CallGc

/-!
# `op_call`: the insufficient-balance branch and the block from `get_account` (frames14)

* `oc_ins`: `stack_push(0); set_retdata(evm_empty, 0); st ev+64, GAS + mcg.1;
  st ev+72, STATE + reservoir; if nac { credit_state_gas_refund(183600) }` ends in `KF1`
  (`d ≥ mcg.1 + 1`);
* **`oc_k5`**: `get_account(msg.CURRENT_TARGET)`, `u256_lt`, `started = 0`, the two branches and
  the tail, from `KCall [] d` with `d ≥ mcg.1 + 3`.
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

theorem lk_cons_ne {xs : List (MlS × ValueHOL 64)} {x n : MlS} {v w : ValueHOL 64} (h : x ≠ n)
    (hx : xs.lookup x = some v) : ((n, w) :: xs).lookup x = some v := by
  have : (x == n) = false := by simpa using h
  simp only [List.lookup, this]
  exact hx

def spSgC : Sig := ⟨[.any], [], [], true⟩
def spCsC : List Cap := [⟨nm "ev", 0, [1, 2, 29], false⟩]
def ultSgC : Sig := ⟨[.any, .any], [], [], false⟩
def callE : GEnv := ⟨[], [nm "stack_push", nm "u256_lt", nm "is_warm_address", nm "warm_address",
  nm "is_account_alive", nm "to_address_masked", nm "get_account"], [Hooks.gJn]⟩

theorem spC_mem : (nm "stack_push", spSgC, spCsC) ∈ ShardsJL.tab26 := by decide +kernel
theorem ultC_mem : (nm "u256_lt", ultSgC, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem callE_sp : PlainOKB callE (nm "stack_push") spSgC spCsC 1 := by decide +kernel
theorem callE_ult : PlainOKB callE (nm "u256_lt") ultSgC [] 2 := by decide +kernel
theorem callE_ga : PlainOKB callE (nm "get_account") gaSg gaCs 1 := by decide +kernel
theorem sp_fpC : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "stack_push") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem ult_fpC : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "u256_lt") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem evKs_ga : evKs gaCs = [] := by decide +kernel

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs

/-- **The insufficient-balance branch.** -/
theorem oc_ins (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {d : Nat} {u0 : State σ}
    (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {M0 M1 : BitVec 64} (l5 : xs.lookup (nm "mcg") = some (wv [M0, M1]))
    (hd : M1.toNat + 1 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ocIns (QJ Γ0 s0) := by
  have hQ := postOK_qj (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  unfold ocIns
  refine hq_tabC hfs hQ.toC (fun g h => h) spC_mem sp_fpC callE_sp hu
    (fun vs hvs Γ1 p1 _ _ _ _ => argsOK_any (by simp [spSgC]) (by rw [evs_len hvs]; rfl))
    fun st1 hk1 _ _ => ?_
  refine hoareG_dec fun s _ hs v _ _ => ?_
  subst s
  refine hoareG_conseq (Q := QJ Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => hQ.loc r t _ hq)
  have hL1 := la_set (s := { st1 with locals := u0.locals }) hL (nm "empty") v
  refine hq_sd hfs hQ.toC (kcall_congr hk1 rfl rfl rfl rfl) fun st2 hk2 => ?_
  refine hq_st64 hfs (y := M1) (kcall_loc hk2 _) ?_ hd fun st3 hk3 hl3 => ?_
  · intro v' hv'
    obtain ⟨w, rfl⟩ := ev_op_word hv'
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hv'
    obtain ⟨hy', -⟩ := ev_gLoad_eq (gk_gword hfs (kcall_gk (kcall_loc hk2 _))) hy
    cases hy'
    rw [Struct.ev_wv_word (x := nm "mcg") (ws := [M0, M1]) (i := 1) ?_ (by simp)] at hz
    · cases hz
      rfl
    · exact hL1 _ _ (lk_cons_ne (by decide) l5)
  refine hq_st hfs (j := 9) rfl (by simp [evDriverSlots]) (by decide) (by decide) (by decide) hk3
    (fun v' hv' => ev_op_word hv') fun x st4 hk4 _ _ => ?_
  have hd1 : 1 ≤ d - M1.toNat := by omega
  unfold ocCredit
  refine hoareG_ite (hoareG_pre (hoareG_unseq (hq_credit hfs hQ.toC hk4 hd1 fun st5 hk5 =>
      hoareG_skip fun t _ ht => Or.inl ⟨rfl, ?_⟩)) fun s _ h => h.1)
    (hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, ?_⟩)
  · rw [ht]; exact kf1_of_kcall (kcall_loc hk5 _) hd1
  · rw [ht]; exact kf1_of_kcall hk4 hd1

/-- Lookups through three newer bindings. -/
theorem lk_cons3 {xs : List (MlS × ValueHOL 64)} {x n1 n2 n3 : MlS} {v w1 w2 w3 : ValueHOL 64}
    (hx : xs.lookup x = some v) (h1 : x ≠ n1) (h2 : x ≠ n2) (h3 : x ≠ n3) :
    ((n1, w1) :: (n2, w2) :: (n3, w3) :: xs).lookup x = some v :=
  lk_cons_ne h1 (lk_cons_ne h2 (lk_cons_ne h3 hx))

/-- **`ocK5`**: `get_account`, `u256_lt`, `started = 0`, both branches, the tail. -/
theorem oc_k5 (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {d : Nat}
    {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 M0 M1 R MSG CA C0 C1 D0 D1 D2 N : BitVec 64}
    {vval : ValueHOL 64}
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l5 : xs.lookup (nm "mcg") = some (wv [M0, M1]))
    (l6 : xs.lookup (nm "reservoir") = some (.val (.word R)))
    (l7 : xs.lookup (nm "value") = some vval)
    (l8 : xs.lookup (nm "msg") = some (.val (.word MSG)))
    (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l11 : xs.lookup (nm "code") = some (wv [C0, C1]))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (l13 : xs.lookup (nm "new_account_charged") = some (.val (.word N)))
    (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ (fld u0.memory e 32).toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld u0.memory e 32).toNat)
    (hcn : C1.toNat + 63 < 2 ^ 64) (hd : M1.toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ocK5 (QCall Γ0 s0) := by
  unfold ocK5
  refine hq_tab hfs ha0 (fun g h => h) ga_mem ga_fp callE_ga (funSpec_true _) hu ?_
    fun vs hvs callee v st hk1 hkE hk112 _ _ => ?_
  · intro vs hvs Γ1 p1 hrun hch hE _
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    have := evs_zero hr1
    subst this
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one h1
    rw [ev_add2 (la_ev hL l8) (ev_cw _ 32)] at hw
    cases hw
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | i
    · simp only [gaSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      refine ⟨rd u0.memory (MSG + BitVec.ofNat 64 32),
        by rw [mem_rd u0.memory (MSG + BitVec.ofNat 64 32)]; rfl, ?_⟩
      have hgp := (hE.1 p1 hrun.2.1 (e, c) (by rw [hfs]; exact List.mem_cons_self ..)).2.1 32
        (by simp [msgXOffs])
      have hmsg : msgOf u0.memory (e, c) = MSG := h112
      rw [hmsg] at hgp
      exact hgp
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
  -- the slot facts at the branch point
  have k2 : ∀ j ∈ evProtSlots, fld st2.memory e (8 * j) = fld u0.memory e (8 * j) := fun j hj =>
    (hkE2 j hj (fun h => by simp [evKs] at h)).trans (hkE j hj (by rw [evKs_ga]; simp))
  have h16 : fld st2.memory e 16 = fld u0.memory e 16 := k2 2 (by simp [evProtSlots])
  have h232 : fld st2.memory e 232 = fld u0.memory e 232 := k2 29 (by simp [evProtSlots])
  have h32 : fld st2.memory e 32 = fld u0.memory e 32 := k2 4 (by simp [evProtSlots])
  refine hoareG_seq (R := QJ Γ0 s0) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · refine hoareG_pre (oc_ins hfs ha0 hk3 hL3
      (lk_cons3 l5 (by decide) (by decide) (by decide)) (by omega)) fun t _ h => h.1
  · refine hoareG_pre (oc_gc hP hfs ha0 hk3 hL3
      (lk_cons3 l1 (by decide) (by decide) (by decide)) (lk_cons3 l2 (by decide) (by decide) (by decide))
      (lk_cons3 l3 (by decide) (by decide) (by decide)) (lk_cons3 l4 (by decide) (by decide) (by decide))
      (lk_cons3 l5 (by decide) (by decide) (by decide)) (lk_cons3 l6 (by decide) (by decide) (by decide))
      (lk_cons3 l7 (by decide) (by decide) (by decide)) (lk_cons3 l8 (by decide) (by decide) (by decide))
      (lk_cons3 l9 (by decide) (by decide) (by decide)) (lk_cons3 l10 (by decide) (by decide) (by decide))
      (lk_cons3 l11 (by decide) (by decide) (by decide)) (lk_cons3 l12 (by decide) (by decide) (by decide))
      (lk_cons3 l13 (by decide) (by decide) (by decide))
      (by show fld st2.memory e 112 = MSG; exact hk112'.trans (hk112.trans h112))
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

#print axioms InitECandidate.Solver.MemSafe.Calls.oc_ins
#print axioms InitECandidate.Solver.MemSafe.Calls.oc_k5

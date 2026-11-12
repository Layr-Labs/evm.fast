import InitECandidate.Solver.Band5.IdxBody
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band5
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types (tB64)

variable {σ : Type}

/-- The new fact from another lane: the scratch key buffer global `bal_key_buf` is non-null
(set by `bal_init`). Needed only at entry: `kb` is copied into a local at once. -/
def KbNZ (s : State σ) : Prop := ∃ w, gword s (nm "bal_key_buf") = some w ∧ nullMax ≤ w.toNat

/-- A `tB64` object is a 64-byte writable buffer. -/
theorem b64_buf64 {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs}
    (hG : G Types.guestC H Γ s) (hp : ptrsOf s = some p)
    {K : BitVec 64} (hK : Fits Γ (.ptr tB64) K) : BufOK Types.guestC Γ p K.toNat 64 := by
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  obtain ⟨o, ho, hob, hot⟩ := hK
  have hsz := (Frames.lay_obj hL ho).2.2.2.1
  rw [hot] at hsz
  have hmin : (Types.guestC.ty tB64).minSz = 64 := rfl
  refine Struct.bufOK_obj hord hL ho (fun k => by rw [hot]; exact b64_scalar k) ?_ ?_
  · unfold Obj.lo; rw [hob]
  · unfold Obj.hi; rw [hob]; omega

/-- A non-null `bal_key_buf` is a 64-byte buffer. -/
theorem kb_buf {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs}
    (hG : G Types.guestC H Γ s) (hp : ptrsOf s = some p) {w : BitVec 64}
    (hw : gword s (nm "bal_key_buf") = some w) (hnz : nullMax ≤ w.toNat) :
    BufOK Types.guestC Γ p w.toNat 64 := by
  have hgt : Types.guestC.GT.lookup (nm "bal_key_buf") = some (.nptr tB64) := by decide
  have hG' := hG
  obtain ⟨q, -, -, -, -, -, hGl, -⟩ := hG'
  obtain ⟨u, hu, hfit⟩ := hGl _ _ hgt
  obtain rfl : u = w := Option.some.inj (hu.symm.trans hw)
  rcases hfit with hn | ⟨o, ho, hob, hot⟩
  · unfold nullMax at hnz hn; omega
  · exact b64_buf64 hG hp ⟨o, ho, hob, hot⟩

/-- A 64-byte buffer does not wrap the address space. -/
theorem buf64_noOvf {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs}
    (hG : G Types.guestC H Γ s) (hp : ptrsOf s = some p) {K : BitVec 64}
    (hK : BufOK Types.guestC Γ p K.toNat 64) : K.toNat + 64 < 2 ^ 64 := by
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have := Helpers.bufOK_bound hord hL K.isLt hK
  have hse : scratchEnd + 16 < 2 ^ 64 := by decide
  rcases this with h | h <;> omega

theorem toNat_add_ofNat {K : BitVec 64} {off : Nat} (h : K.toNat + off < 2 ^ 64) :
    (K + BitVec.ofNat 64 off).toNat = K.toNat + off := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : off < 2 ^ 64),
    Nat.mod_eq_of_lt h]

/-- `st_le64(kb, bal_index)`. -/
theorem argsOK_st {Γ : Gam} {p : Ptrs} {K : BitVec 64} (hK : BufOK Types.guestC Γ p K.toNat 64)
    {s : State σ} (hKl : s.locals.lookup (nm "kb") = some (.val (.word K))) {vs : List (ValueHOL 64)}
    (hvs : evs s [lv (nm "kb"), gBalIndex] = some vs) :
    ArgsOK Types.guestC Γ p [PT.buf 8, PT.any] vs := by
  obtain ⟨a1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [ev_lv, hKl] at h1
  cases h1
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv
    exact ⟨K, rfl, Helpers.bufOK_sub hK le_rfl (by omega)⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; trivial
  · simp at hpt

/-- `memcpy(kb + off, src, n)` with `off + n ≤ 64`. -/
theorem argsOK_mc {Γ : Gam} {p : Ptrs} {K : BitVec 64} (hK : BufOK Types.guestC Γ p K.toNat 64)
    (hov : K.toNat + 64 < 2 ^ 64) {off n : Nat} (hon : off + n ≤ 64) {src : ExpHOL 64}
    {s : State σ} (hKl : s.locals.lookup (nm "kb") = some (.val (.word K)))
    {vs : List (ValueHOL 64)} (hvs : evs s [kbAdd off, src, cw n] = some vs) :
    ArgsOK Types.guestC Γ p [PT.bufArg 2 1 0, PT.any, PT.any] vs := by
  obtain ⟨a1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨a3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  rw [ev_cw] at h3
  cases h3
  obtain ⟨x, y, hx, hy, rfl⟩ := Spec.Mpt.Leaves.ev_add2_inv' h1
  rw [ev_lv, hKl] at hx
  cases hx
  rw [ev_cw] at hy
  cases hy
  have hn : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv
    refine ⟨_, BitVec.ofNat 64 n, rfl, rfl, ?_⟩
    rw [toNat_add_ofNat (by omega), hn]
    exact Helpers.bufOK_sub hK (by omega) (by omega)
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; trivial
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; trivial
  · simp at hpt

/-! ## The cost -/

def bMc : Nat := 73786976294838206468
def bGet : Nat := 92233720368547758087

def isB : Nat :=
  1 + 2 + 0 + (1 + bMc + 0 + (1 + bMc + 0 + (1 + bGet + (max 0 0 + (1 + gptsB + sufB)))))

/-- `addr` is a 20-byte buffer and `kb` a 64-byte one. -/
def AuxI (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  AuxA (nm "addr") 20 s Γ p ∧ AuxA (nm "kb") 64 s Γ p

/-- The entry thread invariant: `addr` and `bal_key_buf` non-null. -/
def Aux0 (s : State σ) (Γ : Gam) (p : Ptrs) : Prop := AuxA (nm "addr") 20 s Γ p ∧ KbNZ s

theorem cs_stle : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "st_le64")
    ⟨[.buf 8, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem cs_mc : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "memcpy")
    ⟨[.bufArg 2 1 0, .any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem cs_get : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_get")
    ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem auxI_step {s s' : State σ} {Γ Γ' : Gam} {p p' : Ptrs} (h : AuxI s Γ p) (hs : Stp Γ Γ' p p')
    (ha : s'.locals.lookup (nm "addr") = s.locals.lookup (nm "addr"))
    (hk : s'.locals.lookup (nm "kb") = s.locals.lookup (nm "kb")) : AuxI s' Γ' p' :=
  ⟨auxA_step h.1 hs ha, auxA_step h.2 hs hk⟩

set_option linter.unusedVariables false in
/-- **Band item #18**: `idx_start_storage`'s conditional cost, from `G`, `hGT` and `KbNZ`. -/
theorem is_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "idx_start_storage")
      gsoSig (fun _ s _ => KbNZ s) isB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_is (by decide) hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hnz⟩ hg
  obtain ⟨w, hw, hbw⟩ := auxA_init2 (sg := gsoSig) rfl hargs (callee := callee) hA
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (Hooks.guestHooksR (σ := σ)) Aux0)
      isBody isB := by
    unfold isBody isB
    -- `var kb = bal_key_buf`
    refine costP_dec_G hH (Aux' := AuxI) ?_ ?_
    · intro s0 _ Γ0 p0 hG0 hp0 hA0 v hv hsh
      obtain ⟨hAd, w0, hw0, hn0⟩ := hA0
      have hv' : s0.globals.lookup (nm "bal_key_buf") = some v := hv
      have hw1 : s0.globals.lookup (nm "bal_key_buf") = some (.val (.word w0)) := by
        unfold gword at hw0
        split at hw0
        · rename_i w' hw'; cases hw0; exact hw'
        · cases hw0
      obtain rfl : v = .val (.word w0) := Option.some.inj (hv'.symm.trans hw1)
      refine ⟨?_, w0, lk_set_self _ _ _, kb_buf hG0 hp0 hw0 hn0⟩
      obtain ⟨A0, hl0, hb0⟩ := hAd
      exact ⟨A0, by rw [lk_set_ne _ _ (by decide)]; exact hl0, hb0⟩
    -- `st_le64(kb, bal_index)`
    refine costP_seq_callD_S hH (Aux' := AuxI) (PreC := fun _ _ => True) cs_stle
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "st_le64") (B := 2) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 hG0 hp0 hA0 vs0 hvs0 callee0 => by
        obtain ⟨K, hKl, hKb⟩ := hA0.2
        exact ⟨argsOK_st hKb hKl hvs0, reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 hG0 hA0 hvs0 _ hcore hq =>
        auxI_step hA0 (stp_of_core_s hH hG0 hcore) rfl rfl) ?_
    -- `memcpy(kb + 8, addr, 20)`
    refine costP_seq_callD_S hH (Aux' := AuxI) (PreC := fun _ _ => True) cs_mc
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "memcpy") (B := bMc) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 hG0 hp0 hA0 vs0 hvs0 callee0 => by
        obtain ⟨K, hKl, hKb⟩ := hA0.2
        exact ⟨argsOK_mc hKb (buf64_noOvf hG0 hp0 hKb) (off := 8) (n := 20) (by omega) hKl hvs0,
          reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 hG0 hA0 hvs0 _ hcore hq =>
        auxI_step hA0 (stp_of_core_s hH hG0 hcore) rfl rfl) ?_
    -- `memcpy(kb + 28, key, 32)`
    refine costP_seq_callD_S hH (Aux' := AuxI) (PreC := fun _ _ => True) cs_mc
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "memcpy") (B := bMc) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 hG0 hp0 hA0 vs0 hvs0 callee0 => by
        obtain ⟨K, hKl, hKb⟩ := hA0.2
        exact ⟨argsOK_mc hKb (buf64_noOvf hG0 hp0 hKb) (off := 28) (n := 32) (by omega) hKl hvs0,
          reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 hG0 hA0 hvs0 _ hcore hq =>
        auxI_step hA0 (stp_of_core_s hH hG0 hcore) rfl rfl) ?_
    -- `var m = htab_get(bal_idx_stor, kb)`
    refine costP_decCall_S hH (Aux' := AuxI) (PreC := fun _ _ => True) cs_get
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "htab_get") (B := bGet) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 _ _ _ vs0 hvs0 callee0 =>
        ⟨hargs_any (by simp) rfl hvs0, reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 _ hG0 hA0 hvs0 _ hcore hq =>
        auxI_step hA0 (stp_of_core_s hH hG0 hcore) (lk_sv (by decide) v0 st s0.locals)
          (lk_sv (by decide) v0 st s0.locals)) ?_
    refine costP_guard ?_
    -- `var v = get_pre_tx_storage(addr, key); suffix`
    refine Band.costP_decCall (gpts_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s0 _ hP vs0 hvs0 callee0
      obtain ⟨Γ0, p0, hG0, hp0, hA0⟩ := hP
      refine ⟨Γ0, p0, (Frames.G_locFree hH s0 _ _).mpr hG0,
        (Frames.ptrsOf_congr rfl).trans hp0, ?_, trivial⟩
      obtain ⟨A0, hl0, hb0⟩ := hA0.1
      obtain ⟨a1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs0
      obtain ⟨a2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [ev_lv, hl0] at h1
      cases h1
      refine ⟨rfl, fun i pt v hpt hv => ?_⟩
      rcases i with _ | _ | i
      · simp only [gsoSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
        subst hpt hv
        exact ⟨A0, rfl, hb0⟩
      · simp only [gsoSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
          Option.some.injEq] at hpt hv
        subst hpt; trivial
      · simp [gsoSig] at hpt
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost cost_suf
  exact main s hs ⟨Γ, p, hG, hp, ⟨w, by rw [hloc]; exact hw, hbw⟩, hnz⟩ hg

end InitECandidate.Solver.Band5

#print axioms InitECandidate.Solver.Band5.kb_buf
#print axioms InitECandidate.Solver.Band5.is_condCost

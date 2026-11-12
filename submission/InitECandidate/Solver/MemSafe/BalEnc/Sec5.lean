import InitECandidate.Solver.MemSafe.BalEnc.Sec4
import InitECandidate.Solver.MemSafe.BalEnc.KeysO
import InitECandidate.Solver.MemSafe.Aw.Loop

set_option autoImplicit false

/-!
# The storage-reads section (`keysSec`): keys, in-place filter, sort, output
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option synthInstance.maxSize 100000
set_option synthInstance.maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type}

def keysSecG (k : ProgHOL 64) : ProgHOL 64 :=
  .dec bSr .one (ld1 bAd 8)
    (.decCall bRk (.comb [.one, .one]) (nm "htab_keys") [lv bSr]
      (.dec bKept .one (cw 0)
        (.seq (.assign .local bI (cw 0))
          (.seq filterLoop
            (.seq (callD (nm "sort_elems") [.rfield 0 (lv bRk), lv bKept, cw 32, cw 2, lv bTmp])
              (.seq (.assign .local bQ (.op .add [lv bP, cw 9]))
                (.seq (.assign .local bI (cw 0))
                  (.seq keysLoop (wrapS bHl5 bP bQ k)))))))))

theorem keysSec_eq : keysSec = keysSecG balSec := rfl

theorem less_false {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (h : wordCmpHOL .less x y = false) :
    2 ^ 63 ≤ y.toNat ∨ y.toNat ≤ x.toNat := by
  by_cases hy : y.toNat < 2 ^ 63
  · right
    by_contra hc
    have := less_of_lt hx hy (by omega)
    rw [this] at h
    exact absurd h (by decide)
  · left
    omega

/-- The filter-loop invariant on `rk = <O, N>`, `i`, `kept`. -/
def P3 (hp : Nat) (O N I K : BitVec 64) : Prop :=
  hp ≤ O.toNat ∧ O.toNat ≤ heapEnd ∧ K.toNat ≤ I.toNat ∧ I.toNat < 2 ^ 63 ∧
    (N.toNat < 2 ^ 63 → N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 + 8 ≤ heapEnd ∧
      I.toNat ≤ N.toNat) ∧ (2 ^ 63 ≤ N.toNat → I.toNat = 0 ∧ K.toNat = 0)

/-- The invariant while the loop condition holds. -/
def P4 (hp : Nat) (O N I K : BitVec 64) : Prop :=
  P3 hp O N I K ∧ I.toNat < N.toNat ∧ N.toNat < 2 ^ 63

/-- The invariant between the conditional and the increment. -/
def Pm (hp : Nat) (O N I K : BitVec 64) : Prop :=
  hp ≤ O.toNat ∧ K.toNat ≤ I.toNat + 1 ∧ I.toNat < N.toNat ∧ N.toNat < 2 ^ 63 ∧
    N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 + 8 ≤ heapEnd

/-- The facts after the loop: what `sort_elems(rk.0, kept, 32, ..)` needs. -/
def P5 (hp : Nat) (O N I K : BitVec 64) : Prop :=
  hp ≤ O.toNat ∧ (K.toNat < 2 ^ 63 → K.toNat ≤ domTop ∧ K.toNat * 32 ≤ domTop + 64 ∧
    O.toNat + K.toNat * 32 ≤ scratchEnd)

def rkf (P : Nat → BitVec 64 → BitVec 64 → BitVec 64 → BitVec 64 → Prop) (hp : Nat) : Fct :=
  Fct.str3 bRk bI bKept (P hp)


set_option maxHeartbeats 4000000 in
/-- **The in-place filter loop** of the storage reads. -/
theorem hoareG_filterLoop {a : AwE σ} (hK : AwOK a) (hc : CsE a) {base : List Fct}
    (hbase : ∀ f ∈ base, ∀ x ∈ [bRk, bI, bKept, bHasw], x ∉ f.vars) {Ret : ValueHOL 64 → Prop} :
    HoareG σ guestCtx (APre a (Hs (rkf P3 a.p0.hp :: base))) filterLoop
      (AQ a (Hs (rkf P5 a.p0.hp :: base)) Ret) := by
  have hT := domBelow_guestCtx
  have hle := hK.hle
  have hbR : Av base bRk := fun f hf => hbase f hf bRk (by simp)
  have hbI : Av base bI := fun f hf => hbase f hf bI (by simp)
  have hbK : Av base bKept := fun f hf => hbase f hf bKept (by simp)
  have hbH : Av base bHasw := fun f hf => hbase f hf bHasw (by simp)
  unfold filterLoop
  refine hoareG_whileA hK (J := Hs (rkf P3 a.p0.hp :: base)) (J' := Hs (rkf P5 a.p0.hp :: base))
    ?_ ?_
  · refine hoareG_pre (P := APre a (Hs (rkf P4 a.p0.hp :: base))) ?_ (fun s hs hh => ?_)
    · refine hoareG_decCallH hK (asp_htab_has hK hc) (rn := bHasw) (fx := [])
        (fo := rkf P3 a.p0.hp :: base) (fb := rkf P3 a.p0.hp :: base) ?_ ?_
        (fun s hs hP vs hvs callee => by
          obtain ⟨v1, v2, rfl, -, -⟩ := evs_two hvs
          exact ⟨v1, v2, rfl⟩)
        (fun s vs v st hL hvs hRet hsh => hs_nil _) ?_ (fun f hf => hf)
      · intro f hf
        rcases List.mem_cons.mp hf with rfl | hf
        · simp only [rkf, Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or]
          exact ⟨by decide, by decide, by decide⟩
        · exact hbH f hf
      · intro f hf
        rcases List.mem_cons.mp hf with rfl | hf
        · simp only [rkf, Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or]
          exact ⟨by decide, by decide, by decide⟩
        · exact hbH f hf
      refine hoareG_seqA (L2 := Hs (rkf Pm a.p0.hp :: base)) ?_ ?_
      · refine hoareG_iteA ?_ ?_
        · refine hoareG_seqA (L2 := Hs (rkf P4 a.p0.hp :: base))
            (hoareG_storeAD hK hT (fun s hs hL w hw => ?_)) (hoareG_assignA hK (fun s hs hL v hv => ?_))
          · obtain ⟨O, N, I, K, hrk, hI, hKk, ⟨⟨hpO, hOe, hKI, hI63, hb1, hb2⟩, hIN, hN63⟩⟩ :=
              hL (rkf P4 a.p0.hp) (by simp)
            have e0 : ev s (.rfield 0 (lv bRk)) = some (.val (.word O)) := by
              rw [ev_rfield (Struct.ev_lw' hrk) 0]
              rfl
            rw [ev_add2 e0 (ev_mul2 (ev_lw hKk) (ev_cw _ 32))] at hw
            cases hw
            have := hb1 hN63
            have hhe : heapEnd < 2 ^ 32 := by decide
            bv_omega
          · obtain ⟨O, N, I, K, hrk, hI, hKk, ⟨⟨hpO, hOe, hKI, hI63, hb1, hb2⟩, hIN, hN63⟩⟩ :=
              hL (rkf P4 a.p0.hp) (by simp)
            rw [ev_add2 (ev_lw hKk) (ev_cw _ 1)] at hv
            cases hv
            have := hb1 hN63
            refine hs_cons ⟨O, N, I, K + BitVec.ofNat 64 1,
              by rw [lookup_update_ne _ _ (by decide)]; exact hrk,
              by rw [lookup_update_ne _ _ (by decide)]; exact hI, lookup_update_self _ _ _,
              hpO, by bv_omega, hIN, hN63, this.1, this.2.1⟩
              (hs_upd hbK (hs_mono hL (fun f hf => List.mem_cons_of_mem _ hf)))
        · refine hoareG_skipA (fun m hm => ?_)
          obtain ⟨O, N, I, K, hrk, hI, hKk, ⟨⟨hpO, hOe, hKI, hI63, hb1, hb2⟩, hIN, hN63⟩⟩ :=
            hm (rkf P4 a.p0.hp) (by simp)
          have := hb1 hN63
          exact hs_cons ⟨O, N, I, K, hrk, hI, hKk, hpO, by omega, hIN, hN63, this.1, this.2.1⟩
            (hs_mono hm (fun f hf => List.mem_cons_of_mem _ hf))
      · refine hoareG_assignA hK (fun s hs hL v hv => ?_)
        obtain ⟨O, N, I, K, hrk, hI, hKk, hpO, hKI, hIN, hN63, hb3, hb4⟩ := hL (rkf Pm a.p0.hp) (by simp)
        rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
        cases hv
        refine hs_cons ⟨O, N, I + BitVec.ofNat 64 1, K,
          by rw [lookup_update_ne _ _ (by decide)]; exact hrk, lookup_update_self _ _ _,
          by rw [lookup_update_ne _ _ (by decide)]; exact hKk, hpO, by omega, by bv_omega, by bv_omega,
          fun _ => ⟨hb3, hb4, by bv_omega⟩, fun h => by omega⟩
          (hs_upd hbI (hs_mono hL (fun f hf => List.mem_cons_of_mem _ hf)))
    · obtain ⟨hP, hcond⟩ := hh
      obtain ⟨O, N, I, K, hrk, hI, hKk, hp3⟩ := hP.2 (rkf P3 a.p0.hp) (by simp)
      obtain ⟨w, hw, hw0⟩ := hcond
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hI] at hx
      cases hx
      rw [ev_rfield (Struct.ev_lw' hrk) 1] at hy
      simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy
      cases hy
      obtain ⟨hN, hlt⟩ := less_lt hp3.2.2.2.1 hxy
      exact ⟨hP.1, hs_cons ⟨O, N, I, K, hrk, hI, hKk, hp3, hlt, hN⟩
        (hs_mono hP.2 (fun f hf => List.mem_cons_of_mem _ hf))⟩
  · intro s hs hJ hc
    obtain ⟨O, N, I, K, hrk, hI, hKk, hpO, hOe, hKI, hI63, hb1, hb2⟩ := hJ (rkf P3 a.p0.hp) (by simp)
    obtain ⟨x, y, hx, hy, hless⟩ := cmp_false hc
    rw [ev_lw hI] at hx
    cases hx
    rw [ev_rfield (Struct.ev_lw' hrk) 1] at hy
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy
    cases hy
    have hse : heapEnd ≤ scratchEnd := by decide
    have hd : domTop = 2 ^ 40 := rfl
    refine hs_cons ⟨O, N, I, K, hrk, hI, hKk, hpO, fun hK63 => ?_⟩
      (hs_mono hJ (fun f hf => List.mem_cons_of_mem _ hf))
    by_cases hN63 : N.toNat < 2 ^ 63
    · have h1 := hb1 hN63
      rcases less_false hI63 hless with h2 | h2
      · omega
      · omega
    · have h1 := hb2 (by omega)
      omega


def rkG (hp : Nat) (O N : BitVec 64) : Prop :=
  hp ≤ O.toNat ∧ O.toNat ≤ heapEnd ∧
    (N.toNat < 2 ^ 63 → N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 + 8 ≤ heapEnd)

/-- The invariant of the output loop. -/
def kJ (h0 P : Nat) (base : List Fct) : List Fct := cf bP bQ h0 (P + 9) ++ (wd bI :: base)

/-- Discharge `Av F x` for concrete names (section 5 lists). -/
macro "avk" : tactic => `(tactic| (
  simp only [Av, wd, cf, pf, kJ, rkf, List.forall_mem_cons, List.forall_mem_append]
  try simp only [Fct.vars, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
  repeat' constructor
  all_goals first | assumption | decide | (intro x hx; exact hx.elim)))

set_option maxHeartbeats 4000000 in
/-- **The output loop** of the storage reads. -/
theorem hoareG_keysLoop {a : AwE σ} (hK : AwOK a) (hc : CsE a) {P : Nat} (hP : B0 ≤ P)
    (hP2 : P + 100 ≤ 2 ^ 59) {base : List Fct}
    (hbase : ∀ f ∈ base, ∀ x ∈ [bQ, bI, bW, bSv2], x ∉ f.vars)
    (hwP : WriterOK a guestCtx (nm "rlp_put_u256")) {Ret : ValueHOL 64 → Prop} :
    HoareG σ guestCtx (APre a (Hs (kJ a.h0 P base))) keysLoop (AQ a (Hs (kJ a.h0 P base)) Ret) := by
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hbQ : Av base bQ := fun f hf => hbase f hf bQ (by simp)
  have hbI : Av base bI := fun f hf => hbase f hf bI (by simp)
  have hbW : Av base bW := fun f hf => hbase f hf bW (by simp)
  have hbS : Av base bSv2 := fun f hf => hbase f hf bSv2 (by simp)
  unfold keysLoop
  refine hoareG_whileA hK (J := Hs (kJ a.h0 P base)) (J' := Hs (kJ a.h0 P base)) ?_
    (fun s _ h _ => h)
  refine hoareG_pre (P := APre a (Hs (kJ a.h0 P base))) ?_ (fun s _ h => h.1)
  refine hoareG_decCallH hK (asp_u256_from_be hK hc) (rn := bSv2) (fx := [])
    (fo := kJ a.h0 P base) (fb := kJ a.h0 P base) (by avk) (by avk)
    (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => hs_nil _) ?_ (fun f hf => hf)
  refine hoareG_stepH hK (fs := kJ a.h0 P base) (fs' := kJ a.h0 P base) hwP (by decide) (by avk)
    (fun m hm => ?_) (fun m T W hm hT hlt hle => ?_) ?_
  · obtain ⟨w, hw, h1, h2⟩ := hm (Fct.bd bQ a.h0 (P + 9)) (by simp [kJ, cf])
    exact ⟨w, hw, h1, by omega⟩
  · exact hs_cf_up (b := bP) (c := bQ) (U := P + 9) (U' := P + 9) (rest := wd bI :: base)
      (by decide) (by avk) hm hT hlt (by omega)
  · refine hoareG_assignA hK (fun s _ hL v hv => ?_)
    obtain ⟨I, hI, -, -⟩ := hL (wd bI) (by simp [kJ])
    rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
    cases hv
    refine hs_wd_set hL (fun f hf hv => ?_)
    have hAv : Av (cf bP bQ a.h0 (P + 9)) bI := by avk
    rcases List.mem_append.mp hf with h | h
    · exact absurd hv (hAv f h)
    · rcases List.mem_cons.mp h with h | h
      · exact h
      · exact absurd hv (hbI f h)


set_option maxHeartbeats 8000000 in
/-- **The storage-reads section.** -/
theorem hoareG_keysSec {a : AwE σ} (hK : AwOK a) (hc : CsE a) {A : Obj} (hAm : A ∈ a.Γ0)
    (hAty : A.ty = tAD) (hslot : (guestC.ty tAD).slot 1 = .ptr tHTh32)
    (hmin : 8 * 1 + 8 ≤ (guestC.ty tAD).minSz) {P : Nat} (hP : B0 ≤ P) (hP2 : P + 100 ≤ 2 ^ 59)
    {ex : List Fct} (hAd : Fct.eqv bAd A.base ∈ ex) (hTmp : wd bTmp ∈ ex)
    (hex : ∀ f ∈ ex, ∀ x ∈ [bP, bQ, bI, bW, bSr, bRk, bKept, bHasw, bSv2, bHl5], x ∉ f.vars)
    (hwP : WriterOK a guestCtx (nm "rlp_put_u256")) {k : ProgHOL 64} {Ret : ValueHOL 64 → Prop}
    (hk : HoareG σ guestCtx (APre a (Hs (pf a.h0 B0 ++ ex))) k (AQ a (Hs []) Ret)) :
    HoareG σ guestCtx (APre a (Hs (pf a.h0 P ++ ex))) (keysSecG k) (AQ a (Hs []) Ret) := by
  have hC := hX_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hle := hK.hle
  have exbP : Av ex bP := fun f hf => hex f hf bP (by simp)
  have exbQ : Av ex bQ := fun f hf => hex f hf bQ (by simp)
  have exbI : Av ex bI := fun f hf => hex f hf bI (by simp)
  have exbW : Av ex bW := fun f hf => hex f hf bW (by simp)
  have exbSr : Av ex bSr := fun f hf => hex f hf bSr (by simp)
  have exbRk : Av ex bRk := fun f hf => hex f hf bRk (by simp)
  have exbKept : Av ex bKept := fun f hf => hex f hf bKept (by simp)
  have exbHasw : Av ex bHasw := fun f hf => hex f hf bHasw (by simp)
  have exbSv2 : Av ex bSv2 := fun f hf => hex f hf bSv2 (by simp)
  have exbHl5 : Av ex bHl5 := fun f hf => hex f hf bHl5 (by simp)
  unfold keysSecG
  -- sr
  refine hoareG_decHI hK (x := bSr) (fx := [Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)]) (fo := []) (fb := []) (by avk)
    (fun f hf => absurd hf (by simp)) ?hnew ?body (fun f hf => absurd hf (by simp))
  case hnew =>
    intro s hs hP' v hv hsh
    obtain ⟨w, hw, hd, rfl⟩ := Struct.ev_load1_inv hv
    have hAdv : s.locals.lookup bAd = some (.val (.word A.base)) :=
      hP'.2 (Fct.eqv bAd A.base) (List.mem_append_right _ hAd)
    rw [ev_add2 (ev_lw hAdv) (ev_cw _ 8)] at hw
    cases hw
    refine hs_cons ⟨_, lookup_update_self _ _ _, ?_⟩ (hs_nil _)
    have h1 := obj_field hc hP'.1 hAm (k := 1) (by rw [hAty]; exact hmin)
    rw [hAty, hslot] at h1
    have e1 : A.cell 1 = A.base + BitVec.ofNat 64 8 := by
      unfold Obj.cell
      congr 2
    rw [e1] at h1
    exact h1
  case body =>
    -- rk = htab_keys(sr)
    refine hoareG_decCallH hK (asp_htab_keys2 hK hc (th := tHTh32) (by decide) (by decide)) (rn := bRk)
      (fx := [Fct.str2 bRk (rkG a.p0.hp)]) (fo := []) (fb := []) (by avk) (fun f hf => absurd hf (by simp)) ?hpre ?hnew2
      ?body2 (fun f hf => absurd hf (by simp))
    case hpre =>
      intro s hs hP' vs hvs callee
      obtain ⟨SR, hSR, hfit⟩ := hP'.2 _ (show Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T) ∈ ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) by simp)
      have := evs_one (ev_lw hSR) hvs
      subst this
      exact ⟨SR, rfl, hfit, hs.2.1⟩
    case hnew2 =>
      intro s vs v st hL hvs hRet hsh
      obtain ⟨O, N, rfl, h1, h2, h3⟩ := hRet
      exact hs_cons ⟨O, N, lookup_update_self _ _ _, h1, h2, h3⟩ (hs_nil _)
    case body2 =>
      have hbRk : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bRk := by avk
      have hbI : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bI := by avk
      have hbKept : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bKept := by avk
      have hbHasw : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bHasw := by avk
      have hbQ : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bQ := by avk
      have hbW : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bW := by avk
      have hbSv2 : Av ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)) bSv2 := by avk
      -- kept = 0
      refine hoareG_decHI hK (x := bKept) (fx := [Fct.eqv bKept (BitVec.ofNat 64 0)]) (fo := [])
        (fb := []) (by avk) (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
        (fun f hf => absurd hf (by simp))
      · rw [ev_cw] at hv
        cases hv
        exact hs_cons (lookup_update_self _ _ _) (hs_nil _)
      -- i = 0
      refine hoareG_seqA (L2 := Hs (rkf P3 a.p0.hp :: ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))) (hoareG_assignA hK (fun s hs hL v hv => ?_)) ?_
      · rw [ev_cw] at hv
        cases hv
        obtain ⟨O, N, hrk, hg⟩ := hL (Fct.str2 bRk (rkG a.p0.hp)) (by simp)
        have hkp : s.locals.lookup bKept = some (.val (.word (BitVec.ofNat 64 0))) :=
          hL (Fct.eqv bKept (BitVec.ofNat 64 0)) (by simp)
        refine hs_cons ⟨O, N, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
          by rw [lookup_update_ne _ _ (by decide)]; exact hrk, lookup_update_self _ _ _,
          by rw [lookup_update_ne _ _ (by decide)]; exact hkp, ?_⟩
          (hs_upd hbI (hs_mono hL (fun f hf => List.mem_append_right _ (List.mem_append_right _ hf))))
        obtain ⟨h1, h2, h3⟩ := hg
        refine ⟨h1, h2, by simp, by simp, fun hN => ⟨(h3 hN).1, (h3 hN).2, by simp⟩, fun _ => ⟨rfl, rfl⟩⟩
      -- the filter loop
      refine hoareG_seqA (L2 := Hs (rkf P5 a.p0.hp :: ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))) (hoareG_filterLoop hK hc (base := ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex))) (fun f hf x hx => ?_)
        (Ret := Ret)) ?_
      · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hx
        rcases hx with rfl | rfl | rfl | rfl
        · exact hbRk f hf
        · exact hbI f hf
        · exact hbKept f hf
        · exact hbHasw f hf
      -- sort
      refine hoareG_seqA (L2 := Hs (rkf P5 a.p0.hp :: ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))) (hoareG_callH hK (asp_sort_keys hK hc) ?_) ?_
      · intro s hs hP' vs hvs callee
        obtain ⟨v1, v2, v3, v4, v5, rfl, f1, f2, f3, f4, f5⟩ := evs_five hvs
        obtain ⟨O, N, I, K, hrk, hI, hKk, hpO, hb⟩ := hP'.2 (rkf P5 a.p0.hp) (by simp)
        obtain ⟨Tm, hTm, -, -⟩ := hP'.2 (wd bTmp) (by simp [hTmp])
        rw [ev_rfield (Struct.ev_lw' hrk) 0] at f1
        simp only [List.getElem?_cons_zero] at f1
        rw [ev_lw hKk] at f2
        rw [ev_cw] at f3 f4
        rw [ev_lw hTm] at f5
        cases f1
        cases f2
        cases f3
        cases f4
        cases f5
        exact ⟨O, K, Tm, rfl, by omega, hb⟩
      refine hoareG_preA (L' := Hs ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex))) ?_ (fun m hm => hs_mono hm (fun f hf => List.mem_cons_of_mem _ hf))
      -- q = p + 9
      refine hoareG_seqA (L2 := Hs (cf bP bQ a.h0 (P + 9) ++ ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))) (hoareG_assignA hK (fun s hs hL v hv => ?_)) ?_
      · obtain ⟨Pv, hPv, h1, h2⟩ := hL (Fct.bd bP a.h0 P) (by simp [pf])
        rw [ev_add2 (ev_lw hPv) (ev_cw _ 9)] at hv
        cases hv
        exact hs_append (hs_cf_new (by decide) hPv (by omega) (by omega) (by omega)) (hs_upd hbQ hL)
      -- i = 0
      refine hoareG_seqA (L2 := Hs (kJ a.h0 P ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))) (hoareG_assignA hK (fun s hs hL v hv => ?_)) ?_
      · rw [ev_cw] at hv
        cases hv
        refine hs_append (hs_upd (by avk) (hs_mono hL (fun f hf => List.mem_append_left _ hf)))
          (hs_cons (bd_wd _ _ _) (hs_upd hbI (hs_mono hL (fun f hf => List.mem_append_right _ hf))))
      -- the output loop
      refine hoareG_seqA (L2 := Hs (kJ a.h0 P ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))) (hoareG_keysLoop hK hc hP hP2 (base := ([Fct.prop bSr (fun T => Fits a.Γ0 (.ptr tHTh32) T)] ++ (pf a.h0 P ++ ex)))
        (fun f hf x hx => ?_) hwP (Ret := Ret)) ?_
      · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hx
        rcases hx with rfl | rfl | rfl | rfl
        · exact hbQ f hf
        · exact hbI f hf
        · exact hbW f hf
        · exact hbSv2 f hf
      -- the wrap
      refine hoareG_wrap hK hC hA hT (UB := P + 9) (by omega) (by decide) (by decide)
        (fk := pf a.h0 B0 ++ ex) (fo := []) (fb := []) (by avk)
        (fun f hf => absurd hf (by simp)) ?hbc ?hnew hk (fun f hf => absurd hf (by simp))
      case hbc =>
        intro m hm
        obtain ⟨B, hB, h1, h2⟩ := hm (Fct.bd bP a.h0 P) (by simp [kJ, cf, pf])
        obtain ⟨C, hC', hC1, hC2⟩ := hm (Fct.bd bQ a.h0 (P + 9)) (by simp [kJ, cf])
        obtain ⟨B', C', hB', hC'', hrel⟩ := hm (Fct.rel bP bQ) (by simp [kJ, cf])
        rw [hB] at hB'
        cases hB'
        rw [hC'] at hC''
        cases hC''
        exact ⟨B, C, hB, hC', h1, hrel, hC2⟩
      case hnew =>
        intro m B C B' hm hB hC h1 h2 h3
        obtain ⟨B1, hBB, hB1, hB2⟩ := hm (Fct.bd bP a.h0 P) (by simp [kJ, cf, pf])
        rw [hB] at hBB
        cases hBB
        obtain ⟨Cc, hCC, hC1, hC2⟩ := hm (Fct.bd bQ a.h0 (P + 9)) (by simp [kJ, cf])
        rw [hC] at hCC
        cases hCC
        obtain ⟨D, B2, hD, hB2', hrel⟩ := hm (Fct.rel bDst bP) (by simp [kJ, pf])
        rw [hB] at hB2'
        cases hB2'
        refine hs_append (hs_cons ⟨B', lookup_update_self _ _ _, by omega, by omega⟩
          (hs_cons ⟨D, B', by rw [lookup_update_ne _ _ (by decide)]; exact hD,
            lookup_update_self _ _ _, by omega⟩ (hs_nil _))) (hs_upd exbP ?_)
        exact hs_mono hm (fun f hf => by simp [kJ, hf])

end InitECandidate.Solver.MemSafe.BalEnc

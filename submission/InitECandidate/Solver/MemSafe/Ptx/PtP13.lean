import InitECandidate.Solver.MemSafe.Ptx.PtP12

/-!
# F3f: the last stores into the message and the `htab_set` of the target (`ptS108` to `ptS113`)
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

variable {σ : Type}

/-- The message cell lists. -/
def MsL (L : List (Nat × BitVec 64)) (v32 v96 v120 aaw akw : BitVec 64) : List (Nat × BitVec 64) :=
  (160, akw) :: (152, aaw) :: (120, v120) :: (96, v96) :: (32, v32) :: L

/-- `ptS108` to `ptS113`. -/
theorem pt_c12 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm aaw akw v32 v96 v120 : BitVec 64}
    {nbl : Nat} {L : List (Nat × BitVec 64)}
    (hP : PtPre E) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl ((120, v120) :: (96, v96) :: (32, v32) :: L))
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0)
    (haa : En (nm "aa") = some (.val (.word aaw))) (hak' : En (nm "ak") = some (.val (.word akw)))
    (hoa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0)) (hb32 : S (Fct.bufok0 v32 20))
    (hd96 : S (Fct.prop (v96.toNat < 2 ^ 32)))
    (hk : ∀ (S' : FS), MsK E En S' rp rl buf n CV w wt wa ak nv nkv wm nbl (MsL L v32 v96 v120 aaw akw) →
      (∀ f, S f → S' f) → Hoare σ guestCtx (PA E En S') ptS113 QT) :
    Hoare σ guestCtx (PA E En S) ptS108 QT := by
  have hL' : ∀ p ∈ (120, v120) :: (96, v96) :: (32, v32) :: L, p.1 ≤ 120 := by
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | rfl | rfl | hp
    · norm_num
    · norm_num
    · norm_num
    · have := (hL p hp).1; omega
  unfold ptS108
  refine hseqN (hn_stMs K (off := 136) (k := 1) (hlen_cw 1) (by norm_num) (by norm_num)
    (fun p hp => by have := hL' p hp; omega)) ?_
  unfold ptS109
  have hm32 : S (Fct.memw (wm + BitVec.ofNat 64 32) v32) :=
    (K.hL (32, v32) (by simp)).2.2
  refine hseqN (hn_hset (th := tHTh20) (n := 20) (m := 20) (kw := v32) (csOK_htab_set tHTh20 (by decide))
    tab_htab_set_20 (aaE := nm "aa") (kE := .load .one (.op .add [lv (nm "m"), cw 32])) haa hoa ?_ hb32 le_rfl
    (fun g ty h => (K.A.C0.gl g ty h).1)) ?_
  · intro s hpa
    have hm := pa_memw hpa hm32
    have := evI_ld (evI_add (evI_lv (hpa.2 _ _ K.hm)) (evI_cw s 32))
    rw [hm] at this
    exact this
  unfold ptS110
  refine hseqN hn_skip ?_
  unfold ptS111
  refine hseqN (hn_c9_one K (off := 152) (x := aaw) (e := lv (nm "aa")) (fun s hpa => evI_lv (hpa.2 _ _ haa))
    (by norm_num) (by norm_num) (fun p hp => by have := hL' p hp; omega)) ?_
  have K1 := msk_addM K (off := 152) (x := aaw) (by norm_num) (by norm_num)
  unfold ptS112
  refine hseqN (hn_c9_one K1 (off := 160) (x := akw) (e := lv (nm "ak")) (fun s hpa => evI_lv (hpa.2 _ _ hak'))
    (by norm_num) (by norm_num) (fun p hp => by
      rcases List.mem_cons.mp hp with rfl | hp
      · norm_num
      · have := hL' p hp; omega)) ?_
  have K2 := msk_addM K1 (off := 160) (x := akw) (by norm_num) (by norm_num)
  exact hk _ K2 (fun f hf => Or.inl (Or.inl hf))

end InitECandidate.Solver.MemSafe.Ptx

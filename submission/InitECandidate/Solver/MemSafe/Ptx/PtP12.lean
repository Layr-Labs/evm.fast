import InitECandidate.Solver.MemSafe.Ptx.PtP11

/-!
# F3f: `ptS104`: the allocation of `empty` and the branch
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

/-- `ptS104` to `ptS108`: `empty`, the branch on `tx.to`. -/
theorem pt_c11 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm aaw akw : BitVec 64} {nbl : Nat}
    {L : List (Nat × BitVec 64)}
    (hP : PtPre E) (hQT : LocIns QT) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0)
    (haa : En (nm "aa") = some (.val (.word aaw))) (hak' : En (nm "ak") = some (.val (.word akw)))
    (hoa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0))
    (hk : ∀ (En' : Env) (S' : FS) (v32 v96 v120 : BitVec 64),
      MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl ((120, v120) :: (96, v96) :: (32, v32) :: L) →
      En' (nm "aa") = some (.val (.word aaw)) → En' (nm "ak") = some (.val (.word akw)) →
      S' (Fct.obj aaw tHTh20 0) → S' (Fct.obj akw tHTh52 0) →
      S' (Fct.bufok0 v32 20) → S' (Fct.prop (v120.toNat + 63 < 2 ^ 64)) →
      S' (Fct.prop (v96.toNat < 2 ^ 32)) →
      S' (tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) v32) →
      Hoare σ guestCtx (PA E En' S') ptS108 QT) :
    Hoare σ guestCtx (PA E En S) ptS104 QT := by
  unfold ptS104
  refine hdecAllocF (locIns_resIns hQT _) (e := cw 8) (n := BitVec.ofNat 64 8) (fun s _ => evI_cw s 8)
    (fun g ty h => (K.A.C0.gl g ty h).1) ?_
  intro we
  have K4 := msk_setF K (x := nm "empty") (by decide) (by unfold AdV; decide) (by decide)
    (.val (.word we)) [Fct.fbuf we (BitVec.ofNat 64 8).toNat,
      Fct.prop (we.toNat % 8 = 0 ∧ heapBase ≤ we.toNat ∧ we.toNat + (BitVec.ofNat 64 8).toNat ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl
        · exact benign_fbuf _ _
        · exact benign_prop _)
  have Kp := msk_gen K4 (En' := ((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct"))
    (Lf := []) (S' := addF S [Fct.fbuf we (BitVec.ofNat 64 8).toNat,
      Fct.prop (we.toNat % 8 = 0 ∧ heapBase ≤ we.toNat ∧ we.toNat + (BitVec.ofNat 64 8).toNat ≤ heapEnd)])
    (by intro y hy u h
        obtain ⟨h1, h2⟩ := msv_ne_sact hy
        rw [env_del_ne _ h2, env_del_ne _ h1]; exact h)
    (fun f h => h) (fun f h => Or.inl h) (by intro X hX; simp at hX)
    (by intro y hy
        simp only [Env.del]
        split_ifs <;> first | rfl | exact un_set K.A.C0.un (by decide) _ y hy)
  have hemp : (((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct")) (nm "empty")
      = some (.val (.word we)) := by
    rw [env_del_ne _ (by decide), env_del_ne _ (by decide)]; exact env_set_self _ _ _
  have hsa : (((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct")) (nm "sa") = none := by
    rw [env_del_ne _ (by decide)]; exact env_del_self _ _
  have hct : (((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct")) (nm "ct") = none :=
    env_del_self _ _
  refine hoare_pre (pt_branch hP Kp hL hemp hsa hct ?_) (fun t _ ht => pa_del (pa_del ht _) _)
  intro v32 v96 v120 Kc
  refine hk _ _ v32 v96 v120 Kc ?_ ?_ ?_ ?_ (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (by simp))))))))
    (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (by simp))))))) 
    (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (by simp)))))) (Or.inr (by simp))
  · rw [env_del_ne _ (by decide), env_del_ne _ (by decide), env_set_ne _ _ (by decide)]; exact haa
  · rw [env_del_ne _ (by decide), env_del_ne _ (by decide), env_set_ne _ _ (by decide)]; exact hak'
  · exact sc_ofS _ _ _ _ _ _ _ (Or.inl hoa)
  · exact sc_ofS _ _ _ _ _ _ _ (Or.inl hoak)

end InitECandidate.Solver.MemSafe.Ptx

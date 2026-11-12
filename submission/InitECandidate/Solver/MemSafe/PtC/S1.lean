import InitECandidate.Solver.MemSafe.PtC.K3

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem cw_decEnc {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns (nm "enc") QT) (hE : HypEncTx σ)
    (hfin : ptAllNames.contains (nm "encode_transaction") = true)
    (htx : En (nm "tx") = some (.val (.word E.tx))) (hobj : S (Fct.obj E.tx tTX 0))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) {k : ProgHOL 64}
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat → buf % 8 = 0 → n % 8 = 0 → buf ≤ rp.toNat →
      rp.toNat + rl.toNat ≤ buf + n → buf + n < 2 ^ 64 →
      CW' (PA E (En.set (nm "enc") (wv [rp, rl])) (addF S [Fct.obj (BitVec.ofNat 64 buf) tVAL n])) k (cbd k) QT) :
    CW' (PA E En S)
      (.decCall (nm "enc") (.comb [.one, .one]) (nm "encode_transaction") [lv (nm "tx")] k)
      (cbd (.decCall (nm "enc") (.comb [.one, .one]) (nm "encode_transaction") [lv (nm "tx")] k)) QT := by
  refine cw_decCall_gen (B := PB E S) (En := En)
    (Bk := fun v t => ∃ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat ∧ buf % 8 = 0 ∧ n % 8 = 0 ∧ buf ≤ rp.toNat ∧
      rp.toNat + rl.toNat ≤ buf + n ∧ buf + n < 2 ^ 64 ∧ v = wv [rp, rl] ∧
      PB E (addF S [Fct.obj (BitVec.ofNat 64 buf) tVAL n]) t)
    (Ek := fun v => En.set (nm "enc") v) (PreC := fun _ _ => True) hQT ?_ ?_ ?_ ?_ (hszW _ (sz_comb 2 (by norm_num)))
    (calleeCostP_tbl (by decide_cbv)) (fun _ _ _ _ _ _ => trivial) ?_
  · intro k' Q' hQ' hk'
    refine hdecEnc hQ' hE hfin htx hobj hGl fun rp rl buf n h1 h2 h3 h4 h5 h6 => ?_
    exact hoare_pre (hk' (wv [rp, rl]) (shEq_wv _ _ rfl)) fun t _ ht => ⟨⟨rp, rl, buf, n, h1, h2, h3, h4, h5, h6, rfl, ht.1⟩, ht.2⟩
  · intro v t l c ⟨rp, rl, buf, n, h1, h2, h3, h4, h5, h6, hv, hb⟩
    exact ⟨rp, rl, buf, n, h1, h2, h3, h4, h5, h6, hv, pb_loc hb l c⟩
  · intro s st v hlk
    exact lke_set (lke_restore hlk) _ v
  · intro v t w hl hlw ⟨rp, rl, buf, n, h1, h2, h3, h4, h5, h6, hv, hb⟩
    have h1' := hl (nm "enc") v (env_set_self _ _ _)
    rw [h1'] at hlw
    obtain rfl : v = w := Option.some.inj hlw
    exact ⟨rp, rl, buf, n, h1, h2, h3, h4, h5, h6, hv, hb⟩
  · intro v hv
    refine cw_pre_ex fun s _ ⟨⟨rp, rl, buf, n, h1, h2, h3, h4, h5, h6, hv, hb⟩, hl⟩ => ?_
    subst hv
    exact ⟨_, ⟨hb, hl⟩, hk rp rl buf n h1 h2 h3 h4 h5 h6⟩


/-- **Chunk 1** with cost. -/
theorem cpt_c1 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hP : PtPre E) (hEnc : HypEncTx σ) (hQT : LocIns QT) (C : Cx0 E En S)
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat) (En' : Env) (S' : FS), Cx1 E En' S' rp rl buf n
      [E.txs + E.idx * BitVec.ofNat 64 16, E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8] →
      CW' (PA E En' S') ptS7 (cbd ptS7) QT) :
    CW' (PA E En S) ptS0 (cbd ptS0) QT := by
  unfold ptS0
  refine cw_seqN (hn_assignG (w' := E.idx + BitVec.ofNat 64 1) (g := nm "bal_index") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) C.nobal ?_) ?_
  · intro s hpa
    exact evI_add (evI_lv (hpa.2 _ _ C.idx)) (evI_cw s 1)
  unfold ptS1
  refine cw_decEnc (locIns_resIns hQT _) hEnc enc_fin C.tx C.obj (fun g ty h => (C.gl g ty h).1) ?_
  intro rp rl buf n h1 h2 h3 h4 h5 h6
  have hne1 : nm "index" ≠ nm "enc" := by decide
  have hne2 : nm "tx" ≠ nm "enc" := by decide
  have hidx : (En.set (nm "enc") (wv [rp, rl])) (nm "index") = some (.val (.word E.idx)) := by
    rw [env_set_ne _ _ hne1]; exact C.idx
  have henc : (En.set (nm "enc") (wv [rp, rl])) (nm "enc") = some (wv [rp, rl]) := env_set_self _ _ _
  unfold ptS2
  refine cw_seqN (hn_st_txs0 hP hidx henc ?_) ?_
  · intro a v h
    rcases h with h | h
    · exact absurd h (C.nocv a v)
    · simp at h
  unfold ptS3
  refine cw_seqN (hn_st_txs1 hP hidx henc ?_) ?_
  · intro a v h
    rcases h with (h | h) | h
    · exact absurd h (C.nocv a v)
    · simp at h
    · have := (Fct.cellv.inj h).1
      rw [this]; exact c1_ne_c2 _
  unfold ptS5
  refine cw_seqN hn_skip ?_
  refine hk rp rl buf n _ _ ⟨?_, hidx, henc, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [env_set_ne _ _ hne2]; exact C.tx
  · exact Or.inl (Or.inl (Or.inl C.obj))
  · exact Or.inl (Or.inl (Or.inr (by simp)))
  · refine gl_one (gl_one (gl_addF C.gl ?_) ?_) ?_
    · intro X hX g ty; simp at hX; subst hX; simp
    · intro g ty; simp
    · intro g ty; simp
  · intro ty h
    rcases h with (h | h) | h
    · rcases h with h | h
      · exact C.nobal ty h
      · simp at h
    · cases h
    · cases h
  · exact Or.inl (Or.inr rfl)
  · exact Or.inr rfl
  · intro a v h
    rcases h with (h | h) | h
    · rcases h with h | h
      · exact absurd h (C.nocv a v)
      · simp at h
    · simp [(Fct.cellv.inj h).1]
    · simp [(Fct.cellv.inj h).1]
  · intro f hf ⟨y, hy⟩
    rcases hf with (hf | hf) | hf
    · rcases hf with hf | hf
      · exact C.nord f hf ⟨y, hy⟩
      · rcases List.mem_cons.mp hf with rfl | hf
        · simp [Fct.reads] at hy
        · exact absurd hf (by simp)
    · exact ⟨_, _, hf⟩
    · exact ⟨_, _, hf⟩
  · exact ⟨h1, h4, h5, h2, h3, h6⟩
  · intro y hy
    rw [env_set_ne _ _ (trk_ne (by simp [TRK]) hy)]; exact C.un y hy

end InitECandidate.Solver.MemSafe.PtC

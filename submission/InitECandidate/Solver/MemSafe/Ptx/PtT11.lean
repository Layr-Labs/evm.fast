import InitECandidate.Solver.MemSafe.Ptx.PtT10

/-!
# F3g: piece 3 of the tail, the merge after `if logs == 0 { logs = lst_new(8, 1) }`
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

theorem env_set_set_same (E : Env) (x : MlS) (a b : ValueHOL 64) (y : MlS) :
    ((E.set x a).set x b) y = (E.set x b) y := by
  simp only [Env.set]
  split_ifs <;> rfl

theorem enT0_out (K : TlCtx σ) : EnT0 K (nm "out") = some (.val (.word K.out)) := by
  have h1 : nm "out" ≠ nm "index" := by decide
  have h2 : nm "out" ≠ nm "sender" := by decide
  simp [EnT0, h1, h2]

theorem enT0_index (K : TlCtx σ) : EnT0 K (nm "index") = some (.val (.word K.E.idx)) := by
  simp [EnT0]

/-- The log list after the merge: its cells are kept and it satisfies `LogsK` in every later state. -/
structure LgOut (K : TlCtx σ) (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (O : List Obj) (lw : BitVec 64) :
    Prop where
  hz : ∀ a, Za K a → Z a ∧ ref a = K.ref0 a
  hsub : ∀ a, Z a → Za K a ∨ a = lw ∨ a = lw + 8
  hLK : ∀ (s : State σ) (Γ : Gam) (p : Ptrs), TlS K.A ref Z O s Γ p → LogsK Γ p s.memory p.hp lw
  rd8 : ∀ (ref' : BitVec 64 → BitVec 64) (Z' : BitVec 64 → Prop) (s : State σ) (Γ : Gam) (p : Ptrs),
    TlS K.A ref' Z' O s Γ p → (∀ a, Z a → Z' a ∧ ref' a = ref a) → rd s.memory (lw + 8) = ref (lw + 8)
  hdis : ∀ c, K.Wt c → c ≠ lw ∧ c ≠ lw + 8
  nb : (ref (lw + 8)).toNat ≤ 2 ^ 25

theorem lst_not_block {t : Nat} (h : t ∈ Hooks.lstTys) : t ∉ blockTys := by
  simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
  unfold blockTys
  rcases h with rfl | rfl | rfl | rfl | rfl <;> decide

/-- A non-empty log list returned by `process_message_call`: the old list satisfies `LgOut`. -/
theorem lgOut_old {K : TlCtx σ} {O : List Obj} (hP : TlPre K) (hne : K.ref0 (K.out + BitVec.ofNat 64 16) ≠ 0) :
    LgOut K K.ref0 (Za K) O (K.ref0 (K.out + BitVec.ofNat 64 16)) := by
  have hF := hP.lstF hne
  refine ⟨fun a ha => ⟨ha, rfl⟩, fun a ha => Or.inl ha,
    fun s Γ p hr => logsK_desc hP hr (fun a ha => ⟨ha, rfl⟩) hF, ?_, hF.dis, hF.nb⟩
  intro ref' Z' s Γ p hr hpre
  have := kc_rd hr (hz := fun a ha => hpre a ha) hF.c8
  exact this

theorem tl_p3 {K : TlCtx σ} {O : List Obj} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K) (hQT : LocIns QT)
    (hk : ∀ (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (lw : BitVec 64), LgOut K ref Z O lw →
      Hoare σ guestCtx (PAg (TL K.A ref Z O) ((EnT0 K).set (nm "logs") (.val (.word lw)))) ptS143 QT) :
    Hoare σ guestCtx (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS141 QT := by
  have hB0 := bloc_tl K.A K.ref0 (Za K) (O := O)
  unfold ptS141
  refine hdecT_g hB0 (locIns_resIns hQT _) (w := K.ref0 (K.out + BitVec.ofNat 64 16)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ (enT0_out K))) (evI_cw s 16))
    have h2 := h1 v hv
    obtain ⟨o, ho, hb, ht, hs⟩ := hP.outO
    rw [hr.keep _ (za_out hP ho hb ht hs (off := 16) (by norm_num) (by norm_num))] at h2
    exact h2
  unfold ptS142
  have hlogs : (EnT0 K).set (nm "logs") (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16)))) (nm "logs") =
      some (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16)))) := env_set_self _ _ _
  let Qm : State σ → Prop := fun t => ∃ (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (lw : BitVec 64),
    LgOut K ref Z O lw ∧ PAg (TL K.A ref Z O) ((EnT0 K).set (nm "logs") (.val (.word lw))) t
  refine hseqN (P1 := Qm) ?_ ?_
  · refine hn_ite ?_ ?_
    · refine hn_post (hn_pre (hn_lstNew1 (K := K) (ref := K.ref0) (Z := Za K) hP.B
        (En := (EnT0 K).set (nm "logs") (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16))))) (nm "logs"))
        (fun s _ h => h.1)) ?_
      intro t _ ⟨l, ref', Z', hz, hsub, h0, h8, hN, hwt, hpa⟩
      refine ⟨ref', Z', l, ⟨fun a ha => hz a ha, hsub, fun s Γ p hr => logsK_fresh hr h0 h8 hN,
        fun ref'' Z'' s Γ p hr hpre => by rw [hr.keep _ (hpre _ h8).1, (hpre _ h8).2], hwt, by rw [hN]; simp⟩, ?_⟩
      exact pag_mono hpa (fun y v h => by rw [env_set_set_same]; exact h) (fun s h => h)
    · refine hoare_skip fun s _ ⟨hpa, hc⟩ => ⟨rfl, ?_⟩
      have hA : EvI s (lv (nm "logs")) (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16)))) :=
        evI_lv (hpa.2 _ _ hlogs)
      have hne := cond_eq_gen_false hA (evI_cw s 0) hc
      have hne' : K.ref0 (K.out + BitVec.ofNat 64 16) ≠ 0 := hne
      exact ⟨K.ref0, Za K, _, lgOut_old hP hne', hpa⟩
  · refine hoare_exists fun ref => hoare_exists fun Z => hoare_exists fun lw => ?_
    exact fun s hs hp => hk ref Z lw hp.1 s hs hp.2

end InitECandidate.Solver.MemSafe.Ptx

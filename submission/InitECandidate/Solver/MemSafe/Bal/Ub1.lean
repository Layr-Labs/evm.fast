import InitECandidate.Solver.MemSafe.Bal.UbKit4

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def u256Sg : Sig := ⟨[.any, .any], [], [], false⟩
def memeqSg : Sig := ⟨[.any, .any, .any], [], [], false⟩

theorem u256_mem : (nm "u256_eq", u256Sg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem memeq_mem : (nm "memeq", memeqSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel

theorem u256_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "u256_eq") u256Sg [] :=
  tabJL_guestR _ _ _ u256_mem
theorem memeq_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "memeq") memeqSg [] :=
  tabJL_guestR _ _ _ memeq_mem

theorem reqNil {Γ : Gam} {t : State σ} : ReqOK ([] : List Cap) t Γ := fun c hc => absurd hc (by simp)

section ub1
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The balance branch. -/
theorem ub_bal (Ent : UbEnt Γ0 s0 p0) {E Eo : Env} {F Fo : Gam → Prop} (hF : MonoF F) (hE : EnvLe Eo E) (hFo : ∀ Γ, F Γ → Fo Γ)
    {b IDX A B C D : BitVec 64} (hadr : E (nm "addr") = some (.val (.word b)))
    (hidx : E (nm "idx") = some (.val (.word IDX))) (hpb : E (nm "post_bal") = some (wv [A, B, C, D]))
    (hk : ∀ Γ, F Γ → SrcKey Γ b 20 tHTd20) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F)
      (.ite (.cmp .equal (lvv "eq") (cw 0))
        (callD (nm "add_balance_change") [lvv "addr", lvv "idx", lvv "post_bal"])
        (callD (nm "bal_remove_change") [lvv "addr", cw 16, cw 40, lvv "idx"]))
      (RR ubc Γ0 s0 p0 (LE Eo Fo)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
  · refine hoareG_conseq (gstepE hH sumSpec_add_balance_change (by decide_cbv) (fun g _ => by simp [bcSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun _ _ => le_mono hE hFo) hq)
    intro Γ s hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 hadr) (evs_cons_mk (le_ev hP.2 hidx)
      (evs_cons_mk (le_ev' hP.2 hpb) evs_nil)))
    exact hdata_any (sg := bcSig) (Pre := BcPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [bcSig]) rfl hP.1 (bcPre_of (ub_facts Ent hP.1) (hk Γ hP.2.2))
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_conseq (gstepE hH sumSpec_bal_remove_change (by decide_cbv) (fun g _ => by simp [rcSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun _ _ => le_mono hE hFo) hq)
    intro Γ s hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 hadr) (evs_cons_mk (ev_cw _ 16) (evs_cons_mk (ev_cw _ 40)
      (evs_cons_mk (le_ev hP.2 hidx) evs_nil))))
    exact hdata_any (sg := rcSig) (Pre := RcPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [rcSig]) rfl hP.1 (rcPre_bal (ub_facts Ent hP.1))
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)

/-- The nonce branch. -/
theorem ub_nonce (Ent : UbEnt Γ0 s0 p0) {E Eo : Env} {F Fo : Gam → Prop} (hF : MonoF F) (hE : EnvLe Eo E) (hFo : ∀ Γ, F Γ → Fo Γ)
    {b IDX N : BitVec 64} (hadr : E (nm "addr") = some (.val (.word b)))
    (hidx : E (nm "idx") = some (.val (.word IDX))) (hpn : E (nm "post_nonce") = some (.val (.word N)))
    (hk : ∀ Γ, F Γ → SrcKey Γ b 20 tHTd20) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F)
      (.ite (.cmp .notEqual (lvv "pre_nonce") (lvv "post_nonce"))
        (callD (nm "add_nonce_change") [lvv "addr", lvv "idx", lvv "post_nonce"])
        (callD (nm "bal_remove_change") [lvv "addr", cw 24, cw 16, lvv "idx"]))
      (RR ubc Γ0 s0 p0 (LE Eo Fo)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
  · refine hoareG_conseq (gstepE hH sumSpec_add_nonce_change (by decide_cbv) (fun g _ => by simp [ncSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun _ _ => le_mono hE hFo) hq)
    intro Γ s hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 hadr) (evs_cons_mk (le_ev hP.2 hidx)
      (evs_cons_mk (le_ev hP.2 hpn) evs_nil)))
    exact hdata_any (sg := ncSig) (Pre := NcPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [ncSig]) rfl hP.1 (ncPre_of (ub_facts Ent hP.1) (hk Γ hP.2.2))
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_conseq (gstepE hH sumSpec_bal_remove_change (by decide_cbv) (fun g _ => by simp [rcSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun _ _ => le_mono hE hFo) hq)
    intro Γ s hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 hadr) (evs_cons_mk (ev_cw _ 24) (evs_cons_mk (ev_cw _ 16)
      (evs_cons_mk (le_ev hP.2 hidx) evs_nil))))
    exact hdata_any (sg := rcSig) (Pre := RcPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [rcSig]) rfl hP.1 (rcPre_nonce (ub_facts Ent hP.1))
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)

/-- `memeq` into the tracked word local `eq`. -/
theorem ub_memeq (Ent : UbEnt Γ0 s0 p0) {E : Env} {F : Gam → Prop} (hF : MonoF F) {w0 : BitVec 64}
    (heq : E (nm "eq") = some (.val (.word w0))) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F)
      (.call (some (some (.local, nm "eq"), none)) (nm "memeq") [lvv "pre_ch", lvv "post_ch", cw 32])
      (RR ubc Γ0 s0 p0 (LE (E.erase (nm "eq")) F)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine gstepAD hH (sa_of_cs (memeq_cs (σ := σ))) (by decide_cbv) (fun g _ => by simp [memeqSg])
    Ent.hord Ent.hL hF heq ?_
  intro Γ s hP vs hvs callee
  exact hdata_any (sg := memeqSg) (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ)
    (PW' := fun _ s Γ a => CapPW ([] : List Cap) s Γ a) (by simp [memeqSg])
    (by rw [evs_len hvs]; rfl) hP.1 reqNil
    (fun y hpc hy => cpw_sub (cs' := []) (by simp) hP.1.1 Ent.hord Ent.hL y hpc hy)

/-- The code branch. -/
theorem ub_code (Ent : UbEnt Γ0 s0 p0) {E Eo : Env} {F Fo : Gam → Prop} (hF : MonoF F) (hSt : St ubNames Eo Fo E F)
    {b IDX : BitVec 64} (hadr : E (nm "addr") = some (.val (.word b)))
    (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → SrcKey Γ b 20 tHTd20) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F)
      (.ite (.cmp .equal (lvv "eq") (cw 0)) ubCode
        (callD (nm "bal_remove_change") [lvv "addr", cw 32, cw 24, lvv "idx"]))
      (RR ubc Γ0 s0 p0 (LE Eo Fo)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
  · unfold ubCode
    refine gdecCallE hH (sa_of_cs (gc_cs (σ := σ))) (by decide_cbv) (fun g _ => by simp [gcSig])
      Ent.hord Ent.hL (fun v _ => ∃ C L : BitVec 64, v = wv [C, L]) hF (fun v Γ Γ1 _ h => h)
      (hSt.hN _ (by simp [ubNames])) ?_ ?_ ?_
    · intro Γ s hP vs hvs callee
      obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
      exact hdata_any (sg := gcSig) (Pre := fun _ s Γ => ReqOK gcCaps s Γ)
        (PW' := fun _ s Γ a => CapPW gcCaps s Γ a) (by simp [gcSig])
        (by rw [evs_len hvs]; rfl) hP.1 (ub_facts Ent hP.1).reqGc
        (fun y hpc hy => cpw_sub ubc_sub_gc hP.1.1 Ent.hord Ent.hL y hpc hy)
    · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
      obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
        have := (shapeEqHOL_eq_true _ _).mp hsh
        exact (shapeEqHOL_eq_true _ _).mpr this)
      match ws, hws with
      | [C, L], _ => exact ⟨C, L, rfl⟩
    · refine hk_G (fun v ⟨C, L, hv⟩ => ?_)
      subst hv
      have hSt' := hSt.set (n := nm "code") (by simp [ubNames]) (wv [C, L])
      refine hoareG_conseq (gstepE hH sumSpec_add_code_change (by decide_cbv) (fun g _ => by simp [ccSig])
        Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => hSt'.rr hq)
      intro Γ s hP vs hvs callee
      have hcode : (E.set (nm "code") (wv [C, L])) (nm "code") = some (wv [C, L]) := env_set_self _ _ _
      have e0 := ev_rfield_wv (ws := [C, L]) (le_ev' hP.2 hcode) (i := 0) (by simp)
      have e1 := ev_rfield_wv (ws := [C, L]) (le_ev' hP.2 hcode) (i := 1) (by simp)
      obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 (by rw [env_set_ne _ _ (by decide)]; exact hadr))
        (evs_cons_mk (le_ev hP.2 (by rw [env_set_ne _ _ (by decide)]; exact hidx)) (evs_cons_mk e0
        (evs_cons_mk e1 evs_nil))))
      exact hdata_any (sg := ccSig) (Pre := CcPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [ccSig]) rfl
        hP.1 (ccPre_of (ub_facts Ent hP.1) (hk Γ hP.2.2))
        (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_conseq (gstepE hH sumSpec_bal_remove_change (by decide_cbv) (fun g _ => by simp [rcSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => hSt.rr hq)
    intro Γ s hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 hadr) (evs_cons_mk (ev_cw _ 32) (evs_cons_mk (ev_cw _ 24)
      (evs_cons_mk (le_ev hP.2 hidx) evs_nil))))
    exact hdata_any (sg := rcSig) (Pre := RcPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [rcSig]) rfl
      hP.1 (rcPre_code (ub_facts Ent hP.1))
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)

theorem env_reset {E : Env} {x y : MlS} (hne : y ≠ x) {v1 v2 : ValueHOL 64} (h1 : E x = some v1)
    (h2 : E y = some v2) : (E.set x v1).set y v2 = E := by
  funext z
  by_cases hz : z = y
  · subst hz; simp [Env.set, h2]
  · by_cases hz' : z = x
    · subst hz'; simp [Env.set, h1, hz]
    · simp [Env.set, hz, hz']

theorem hexG {G : ValueHOL 64 → Prop} {cs : List Cap} {n : MlS} {E : Env} {F : Gam → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ v, G v → HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) F) c Q) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 (fun Γ t => ∃ v, G v ∧ LE (E.set n v) F Γ t) Γ s) c Q :=
  fun s hs ⟨Γ, hIV, v, hG, hl⟩ => h v hG s hs ⟨Γ, hIV, hl⟩

/-- The post state of the `post` record: balance and nonce. -/
def Emid (E : Env) (x : BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) : Env :=
  (E.set (nm "post_bal") (wv [x.1, x.2.1, x.2.2.1, x.2.2.2.1])).set (nm "post_nonce") (.val (.word x.2.2.2.2))

theorem ub_assigns {E : Env} {F : Gam → Prop} (hF : MonoF F) (hpch : E (nm "post_ch") = none) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) ubAssigns
      (RR ubc Γ0 s0 p0 (fun Γ t => ∃ x, LE (Emid E x) F Γ t)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubAssigns
  refine hseqR2 (L := fun Γ t => ∃ v, (∃ A B C D : BitVec 64, v = wv [A, B, C, D]) ∧
    LE (E.set (nm "post_bal") v) F Γ t) ?_ (hexG fun v hG => ?_)
  · exact hassignT hH (fun v => ∃ A B C D : BitVec 64, v = wv [A, B, C, D]) (fun Γ s v hP hv => ev_load4w (by unfold ld4 sh4 at hv; exact hv))
  · obtain ⟨A, B, C, D, rfl⟩ := hG
    refine hseqR2 (L := fun Γ t => ∃ v2, (∃ N : BitVec 64, v2 = .val (.word N)) ∧
      LE ((E.set (nm "post_bal") (wv [A, B, C, D])).set (nm "post_nonce") v2) F Γ t) ?_ (hexG fun v2 hG2 => ?_)
    · exact hassignT hH (fun v => ∃ N : BitVec 64, v = .val (.word N)) (fun Γ s v hP hv => ev_load1w (by unfold ld1 at hv; exact hv))
    · obtain ⟨N, rfl⟩ := hG2
      refine hoareG_conseq (hassignU hH (n := nm "post_ch") ?_) (fun _ _ h => h)
        (fun r t _ _ hq => rr_mono (fun Γ t h => ⟨(A, B, C, D, N), h⟩) hq)
      simp (config := {decide := true}) [Env.set, hpch]

/-- The comparisons and mutator calls after `u256_eq`. -/
theorem ub_eq (Ent : UbEnt Γ0 s0 p0) {E Eo : Env} {F Fo : Gam → Prop} (hF : MonoF F) (hSt : St ubNames Eo Fo E F)
    {b IDX A B C D N w0 : BitVec 64} (hadr : E (nm "addr") = some (.val (.word b)))
    (hidx : E (nm "idx") = some (.val (.word IDX))) (hpb : E (nm "post_bal") = some (wv [A, B, C, D]))
    (hpn : E (nm "post_nonce") = some (.val (.word N))) (heq : E (nm "eq") = some (.val (.word w0)))
    (hk : ∀ Γ, F Γ → SrcKey Γ b 20 tHTd20) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) ubEq (RR ubc Γ0 s0 p0 (LE Eo Fo)) := by
  unfold ubEq
  refine hseqR2 (L := LE E F) (ub_bal Ent hF (envLe_refl E) (fun _ h => h) hadr hidx hpb hk) ?_
  refine hseqR2 (L := LE E F) (ub_nonce Ent hF (envLe_refl E) (fun _ h => h) hadr hidx hpn hk) ?_
  refine hseqR2 (L := LE (E.erase (nm "eq")) F) (ub_memeq Ent hF heq) ?_
  refine ub_code Ent hF (hSt.erase (n := nm "eq") (by simp [ubNames])) (b := b) (IDX := IDX) ?_ ?_ hk
  · rw [env_erase_ne _ (by decide)]; exact hadr
  · rw [env_erase_ne _ (by decide)]; exact hidx

/-- The post record's fields, then the comparisons. -/
theorem ub_post (Ent : UbEnt Γ0 s0 p0) {E Eo : Env} {F Fo : Gam → Prop} (hF : MonoF F) (hSt : St ubNames Eo Fo E F)
    {b IDX A B C D N : BitVec 64} (hadr : E (nm "addr") = some (.val (.word b)))
    (hidx : E (nm "idx") = some (.val (.word IDX))) (hpb : E (nm "post_bal") = some (wv [A, B, C, D]))
    (hpn : E (nm "post_nonce") = some (.val (.word N))) (hpch : E (nm "post_ch") = none)
    (hk : ∀ Γ, F Γ → SrcKey Γ b 20 tHTd20) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) ubPost (RR ubc Γ0 s0 p0 (LE Eo Fo)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubPost
  refine hseqR2 (L := fun Γ t => ∃ x, LE (Emid E x) F Γ t) ?_ (hexL fun x => ?_)
  · refine hoareG_ite (hoareG_pre (ub_assigns hF hpch) (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
    refine hoareG_skip fun t _ ⟨Γ, hIV, hl⟩ => Or.inl ⟨rfl, Γ, hIV, (A, B, C, D, N), ?_⟩
    have : Emid E (A, B, C, D, N) = E := env_reset (by decide) hpb hpn
    rw [this]; exact hl
  · obtain ⟨A', B', C', D', N'⟩ := x
    have hS1 := (hSt.set (n := nm "post_bal") (by simp [ubNames]) (wv [A', B', C', D'])).set
      (n := nm "post_nonce") (by simp [ubNames]) (.val (.word N'))
    refine gdecCallE hH (sa_of_cs (u256_cs (σ := σ))) (by decide_cbv) (fun g _ => by simp [u256Sg])
      Ent.hord Ent.hL (fun v _ => ∃ w : BitVec 64, v = .val (.word w)) hF (fun v Γ Γ1 _ h => h)
      (hSt.hN _ (by simp [ubNames])) ?_ ?_ ?_
    · intro Γ s hP vs hvs callee
      obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
      exact hdata_any (sg := u256Sg) (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ)
        (PW' := fun _ s Γ a => CapPW ([] : List Cap) s Γ a) (by simp [u256Sg])
        (by rw [evs_len hvs]; rfl) hP.1 reqNil
        (fun y hpc hy => cpw_sub (cs' := []) (by simp) hP.1.1 Ent.hord Ent.hL y hpc hy)
    · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
      exact val_of_shapeEq_one' hsh
    · refine hk_G (fun v ⟨w, hv⟩ => ?_)
      subst hv
      refine ub_eq Ent hF (hS1.set (n := nm "eq") (by simp [ubNames]) _) (b := b) (IDX := IDX) (A := A') (B := B') (C := C') (D := D') (N := N') (w0 := w) ?_ ?_ ?_ ?_ ?_ hk
      all_goals simp (config := {decide := true}) [Emid, Env.set, hadr, hidx]

end ub1

end InitECandidate.Solver.MemSafe.Bal

import InitECandidate.Solver.MemSafe.Ops7.CreateA
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_create`, from `extend_memory` on (sonnet-create)

* `cr_al`: `ca = alloc(24); <cr_ca>`;  `cr_ga`: `a = get_account(lds 1 (msg + 32)); <cr_al>`;
* `cr_msg`: `var msg = lds 1 (ev + 112); <cr_ga>`;  `cr_em`: `extend_memory(x.1); <cr_msg>`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section createB
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

theorem cr_al (hP : PreHyps σ) (hcca : CcaHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) crAl QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  unfold crAl
  obtain ⟨m, Γw, pm, hW⟩ := win_start (kcall_gk hu)
  refine hq_winAlloc hfs hQ hW (N := BitVec.ofNat 64 24) (ev_cw _ 24) ?_
  intro st q pc' hm hmono hW' hq8 hbnd hT
  have hN : (BitVec.ofNat 64 24).toNat = 24 := by decide
  have hB : BufOK guestC _ pc' q.toNat 20 :=
    lg_bufOK_sub (tmpBuf_bufOK hT) (le_refl _) (by rw [hN]; omega)
  have hK1 := kcall_of_gkb (gkb_of_win hF hfs hW' hB)
  have hxs1 := la_set (s := { st with locals := u0.locals }) hxs (nm "ca") (.val (.word q))
  exact cr_ca hP hcca hfs ha0 hK1 hxs1 (by lkq) (by lkq) (by lkq) (by lkq)
    (by show (fld st.memory e 16).toNat < (fld st.memory e 232).toNat; rw [hm]; exact hsp) hd

theorem cr_ga (hP : PreHyps σ) (hcca : CcaHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn MSG : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (lmsg : xs.lookup (nm "msg") = some (.val (.word MSG))) (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) crGa QC := by
  unfold crGa
  refine hq_tab hfs ha0 (fun g h => h) ga_mem ga_fp (ga_ok 1 rfl) (funSpec_true _) hu ?_ ?_
  · intro vs hvs Γ1 p1 hrun hch hE _
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    have := evs_zero hr1
    subst this
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one h1
    rw [ev_add2 (la_ev hxs lmsg) (ev_cw _ 32)] at hw
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
  · intro vs hvs callee v st hk1 hkE hk112 _ _
    have hsp1 : (fld st.memory e 16).toNat < (fld st.memory e 232).toNat := by
      have h16 : fld st.memory e 16 = fld u0.memory e 16 :=
        hkE 2 (by decide) (by simp [evKs, gaCs])
      have h232 : fld st.memory e 232 = fld u0.memory e 232 :=
        hkE 29 (by decide) (by simp [evKs, gaCs])
      rw [h16, h232]; exact hsp
    have hxs1 := la_set (s := { st with locals := u0.locals }) hxs (nm "a") v
    exact cr_al hP hcca hfs ha0 (kcall_congr hk1 rfl rfl rfl rfl) hxs1 (by lkq) (by lkq)
      (by lkq) hsp1 hd

theorem cr_msg (hP : PreHyps σ) (hcca : CcaHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) crMsg QC := by
  unfold crMsg
  refine hq_dec (Q := QC) (fun ro t l h => qcall_loc h l) ?_
  intro v hv hsh
  have hE : u0.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs (kcall_gk hu))
  have hvv := (Struct.ev_evL hE hv).1
  subst hvv
  have hxs1 := la_set (s := u0) hxs (nm "msg")
    (.val (.word (rd u0.memory (e + BitVec.ofNat 64 112))))
  exact cr_ga hP hcca hfs ha0 (kcall_congr hu rfl rfl rfl rfl) hxs1 (by lkq) (by lkq) (by lkq)
    (by lkq) rfl hsp hd

theorem cr_em (hP : PreHyps σ) (hcca : CcaHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn X1 X2 : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (lx : xs.lookup (nm "x") = some (wv [X1, X2]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d)
    (h32 : X2.toNat % 32 = 0) (hb : (fld u0.memory e 32).toNat + X2.toNat ≤ 2 ^ 40) :
    HoareG σ guestCtx (fun t => t = u0) crEm QC := by
  unfold crEm
  have hx : ev u0 (Struct.rf 1 "x") = some (.val (.word X2)) :=
    Struct.ev_wv_word (hxs _ _ lx) (i := 1) (by simp)
  refine hq_em hfs hu hx h32 hb ?_
  intro st hKst hlen hkeep
  have hsp1 : (fld st.memory e 16).toNat < (fld st.memory e 232).toNat := by
    have h16 : fld st.memory e 16 = fld u0.memory e 16 := hkeep 2 (by decide) (by decide)
    have h232 : fld st.memory e 232 = fld u0.memory e 232 := hkeep 29 (by decide) (by decide)
    rw [h16, h232]; exact hsp
  exact cr_msg hP hcca hfs ha0 (kcall_congr hKst rfl rfl rfl rfl) hxs lst len ln hsp1 hd

end createB

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_al
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_ga
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_msg
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_em

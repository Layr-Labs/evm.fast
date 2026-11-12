import InitECandidate.Solver.MemSafe.Ops7.Create
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_create2`, from `s = sat_word(mstart)` on (sonnet-create)

* `cr_gc`: `started = generic_create(endowment, ca, s, n); <tail>`;
* `cr2_c`: `compute_create2_contract_address(.., ca); <cr_gc>` (a `tab26` callee);
* `cr2_al`: `ca = alloc(24); <cr2_c>`; `cr2_s`: `s = sat_word(mstart); <cr2_al>`;
* `cr2_msg`: `var msg = lds 1 (ev + 112); <cr2_s>`; `cr2_em`: `extend_memory(x.1); <cr2_msg>`.
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

/-- `compute_create2_contract_address`'s `tab26` signature. -/
def c2Sg : Sig := ⟨[.any, .any, .any, .any, .buf 20], [], [], false⟩
def c2E : GEnv := ⟨[], [nm "compute_create2_contract_address"], [Hooks.gJn]⟩

theorem c2_mem : (nm "compute_create2_contract_address", c2Sg, ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem c2_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "compute_create2_contract_address") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem c2_ok : PlainOKB c2E (nm "compute_create2_contract_address") c2Sg [] 5 := by
  decide +kernel

section create2A
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

theorem cr_gc (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) {q : BitVec 64}
    {d : Nat} {u0 : State σ} (hu : KC [q] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {ms nn : BitVec 64} {en : ValueHOL 64}
    (len : xs.lookup (nm "endowment") = some en)
    (lca : xs.lookup (nm "ca") = some (.val (.word q)))
    (ls : xs.lookup (nm "s") = some (.val (.word ms)))
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) crGc QC := by
  unfold crGc
  refine hq_gcr hP hfs hu (en := en) (ms := ms) (mz := nn) ?_ hsp hd
  rw [evs_cons (la_ev hxs len) (evs_cons (la_ev hxs lca) (evs_cons (la_ev hxs ls)
    (evs_cons (la_ev hxs ln) evs_nil)))]
  rfl

theorem cr2_c (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {q : BitVec 64}
    {d : Nat} {u0 : State σ} (hu : KC [q] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {ms nn : BitVec 64} {en : ValueHOL 64}
    (len : xs.lookup (nm "endowment") = some en)
    (lca : xs.lookup (nm "ca") = some (.val (.word q)))
    (ls : xs.lookup (nm "s") = some (.val (.word ms)))
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) cr2C QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  unfold cr2C
  refine hq_tabC hfs hQ.toC (E := c2E) (by simp [c2E]) c2_mem c2_fp c2_ok hu ?_ ?_
  · intro vs hvs Γ1 p1 hrun hch hE hB
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨x3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨x4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    obtain ⟨x5, r5, rfl, h5, hr5⟩ := evs_cons_inv hr4
    have := evs_zero hr5
    subst this
    have hq5 : x5 = .val (.word q) := by
      have := la_ev hxs lca
      rw [show ev u0 (lv (nm "ca")) = _ from this] at h5
      exact (Option.some.inj h5).symm
    subst hq5
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | _ | _ | i
    · simp only [c2Sg, List.getElem?_cons_zero, Option.some.injEq] at hpt; subst hpt; trivial
    · simp only [c2Sg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    · simp only [c2Sg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    · simp only [c2Sg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    · simp only [c2Sg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨q, rfl, hB q (List.mem_singleton_self q)⟩
    · simp [c2Sg] at hpt
  · intro st hk1 hkE hk112
    have hsp1 : (fld st.memory e 16).toNat < (fld st.memory e 232).toNat := by
      have h16 : fld st.memory e 16 = fld u0.memory e 16 :=
        hkE 2 (by decide) (by simp [evKs])
      have h232 : fld st.memory e 232 = fld u0.memory e 232 :=
        hkE 29 (by decide) (by simp [evKs])
      rw [h16, h232]; exact hsp
    exact cr_gc hP hfs (kcall_congr hk1 rfl rfl rfl rfl) hxs len lca ls ln hsp1 hd

theorem cr2_al (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {ms nn : BitVec 64} {en : ValueHOL 64}
    (len : xs.lookup (nm "endowment") = some en)
    (ls : xs.lookup (nm "s") = some (.val (.word ms)))
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) cr2Al QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  unfold cr2Al
  obtain ⟨m, Γw, pm, hW⟩ := win_start (kcall_gk hu)
  refine hq_winAlloc hfs hQ hW (N := BitVec.ofNat 64 24) (ev_cw _ 24) ?_
  intro st q pc' hm hmono hW' hq8 hbnd hT
  have hN : (BitVec.ofNat 64 24).toNat = 24 := by decide
  have hB : BufOK guestC _ pc' q.toNat 20 :=
    lg_bufOK_sub (tmpBuf_bufOK hT) (le_refl _) (by rw [hN]; omega)
  have hK1 := kcall_of_gkb (gkb_of_win hF hfs hW' hB)
  have hxs1 := la_set (s := { st with locals := u0.locals }) hxs (nm "ca") (.val (.word q))
  exact cr2_c hP hfs ha0 hK1 hxs1 (by lkq) (by lkq) (by lkq) (by lkq)
    (by show (fld st.memory e 16).toNat < (fld st.memory e 232).toNat; rw [hm]; exact hsp) hd

theorem cr2_s (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) cr2S QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  unfold cr2S
  refine hq_pure hQ (Struct.pure_sat_word guestCtx_code) ?_
  intro vs hvs callee sv st hm hg hd' hbe hRv hsh
  have hs0 : ev u0 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := la_ev hxs lst
  rw [evs_cons hs0 evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hsv := hRv a0 a1 a2 a3 rfl
  subst hsv
  have hxs1 := la_set (s := { st with locals := u0.locals }) hxs (nm "s")
    (.val (.word (Struct.satWordF a0 a1 a2 a3)))
  exact cr2_al hP hfs ha0 (kcall_congr hu hm hg hd' hbe) hxs1 (by lkq) (by lkq) (by lkq)
    (by show (fld st.memory e 16).toNat < (fld st.memory e 232).toNat; rw [hm]; exact hsp) hd

theorem cr2_msg (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) cr2Msg QC := by
  unfold cr2Msg
  refine hq_dec (Q := QC) (fun ro t l h => qcall_loc h l) ?_
  intro v hv hsh
  have hxs1 := la_set (s := u0) hxs (nm "msg") v
  exact cr2_s hP hfs ha0 (kcall_congr hu rfl rfl rfl rfl) hxs1 (by lkq) (by lkq) (by lkq) hsp hd

theorem cr2_em (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn X1 X2 : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (lx : xs.lookup (nm "x") = some (wv [X1, X2]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d)
    (h32 : X2.toNat % 32 = 0) (hb : (fld u0.memory e 32).toNat + X2.toNat ≤ 2 ^ 40) :
    HoareG σ guestCtx (fun t => t = u0) cr2Em QC := by
  unfold cr2Em
  have hx : ev u0 (Struct.rf 1 "x") = some (.val (.word X2)) :=
    Struct.ev_wv_word (hxs _ _ lx) (i := 1) (by simp)
  refine hq_em hfs hu hx h32 hb ?_
  intro st hKst hlen hkeep
  have hsp1 : (fld st.memory e 16).toNat < (fld st.memory e 232).toNat := by
    have h16 : fld st.memory e 16 = fld u0.memory e 16 := hkeep 2 (by decide) (by decide)
    have h232 : fld st.memory e 232 = fld u0.memory e 232 := hkeep 29 (by decide) (by decide)
    rw [h16, h232]; exact hsp
  exact cr2_msg hP hfs ha0 (kcall_congr hKst rfl rfl rfl rfl) hxs lst len ln hsp1 hd

end create2A

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_gc
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_c
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_al
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_s
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_msg
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_em

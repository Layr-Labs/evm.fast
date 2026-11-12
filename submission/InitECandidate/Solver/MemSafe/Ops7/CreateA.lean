import InitECandidate.Solver.MemSafe.Ops7.Hyps

/-!
# `op_create`, from `ca = alloc(24)` on (sonnet-create)

* `cr_s`: `s = sat_word(mstart); started = generic_create(endowment, ca, s, n); <tail>`;
* `cr_ca`: `compute_contract_address(.., ca); <cr_s>` (the hypothesis `CcaHyp`);
* `cr_al`: `ca = alloc(24); <cr_ca>` (a heap window; `ca` becomes the tracked block).
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

section createA
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

theorem cr_s (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {q : BitVec 64}
    {d : Nat} {u0 : State σ} (hu : KC [q] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (lca : xs.lookup (nm "ca") = some (.val (.word q)))
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) crS QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  unfold crS
  refine hq_pure hQ (Struct.pure_sat_word guestCtx_code) ?_
  intro vs hvs callee sv st hm hg hd' hbe hRv hsh
  have hs0 : ev u0 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := la_ev hxs lst
  rw [evs_cons hs0 evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hsv := hRv a0 a1 a2 a3 rfl
  subst hsv
  have hK1 : KC [q] d (setVarHOLFinite (nm "s") (.val (.word (Struct.satWordF a0 a1 a2 a3)))
      { st with locals := u0.locals }) := kcall_congr hu hm hg hd' hbe
  have hxs1 := la_set (s := { st with locals := u0.locals }) hxs (nm "s")
    (.val (.word (Struct.satWordF a0 a1 a2 a3)))
  have hsp1 : (fld st.memory e 16).toNat < (fld st.memory e 232).toNat := by rw [hm]; exact hsp
  set t1 := setVarHOLFinite (nm "s") (.val (.word (Struct.satWordF a0 a1 a2 a3)))
      { st with locals := u0.locals } with ht1
  have hen : ev t1 (lv (nm "endowment")) = some en := la_ev hxs1 (by lkq)
  have hca : ev t1 (lv (nm "ca")) = some (.val (.word q)) := la_ev hxs1 (by lkq)
  have hs : ev t1 (lv (nm "s")) = some (.val (.word (Struct.satWordF a0 a1 a2 a3))) :=
    la_ev hxs1 (by lkq)
  have hn : ev t1 (lv (nm "n")) = some (.val (.word nn)) := la_ev hxs1 (by lkq)
  unfold crGc
  refine hq_gcr hP hfs (u0 := t1) hK1 (en := en) (ms := Struct.satWordF a0 a1 a2 a3) (mz := nn)
    ?_ (by rw [show t1.memory = st.memory from rfl]; exact hsp1) hd
  rw [evs_cons hen (evs_cons hca (evs_cons hs (evs_cons hn evs_nil)))]
  rfl

theorem cr_ca (hP : PreHyps σ) (hcca : CcaHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {q : BitVec 64} {d : Nat} {u0 : State σ} (hu : KC [q] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn : BitVec 64} {en : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (lca : xs.lookup (nm "ca") = some (.val (.word q)))
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) crCca QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  unfold crCca
  refine hq_tabH hfs hQ.toC (E := ccaE) (by simp [ccaE]) hcca.summ hcca.fp cca_ok hu ?_ ?_
  · intro vs hvs Γ1 p1 hrun hch hE hB
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨x3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    have := evs_zero hr3
    subst this
    have hq3 : x3 = .val (.word q) := by
      have := la_ev hxs lca
      rw [show ev u0 (lv (nm "ca")) = _ from this] at h3
      exact (Option.some.inj h3).symm
    subst hq3
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i
    · simp only [ccaSg, List.getElem?_cons_zero, Option.some.injEq] at hpt; subst hpt; trivial
    · simp only [ccaSg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    · simp only [ccaSg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨q, rfl, hB q (List.mem_singleton_self q)⟩
    · simp [ccaSg] at hpt
  · intro st hk1 hkE hk112
    have hsp1 : (fld st.memory e 16).toNat < (fld st.memory e 232).toNat := by
      have h16 : fld st.memory e 16 = fld u0.memory e 16 :=
        hkE 2 (by decide) (by simp [evKs])
      have h232 : fld st.memory e 232 = fld u0.memory e 232 :=
        hkE 29 (by decide) (by simp [evKs])
      rw [h16, h232]; exact hsp
    exact cr_s hP hfs ha0 (kcall_congr hk1 rfl rfl rfl rfl) (xs := xs) hxs lst len lca ln hsp1 hd

end createA

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_s
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_ca

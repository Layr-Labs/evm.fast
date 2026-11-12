import InitECandidate.Solver.MemSafe.Frames.FinSw

/-!
# `finish_child`: the tail after the local loads

**`finTail_hoare`**: from the child-side facts `PA` (the 11 locals loaded), `finTail` (the
kind-2 prefix, the switch, the parent's part, the releases and `pc_add`) ends with `G`, the
parent's chain and `Φ` below its entry value on a return, and never raises `EvmErr`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The post of `finish_child`'s body. -/
def FinPostC (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (s0 : State σ)
    (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G C H Γ' t ∧
    (∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t < Phi s0 ∧ JrNZ t ∧ RootK s0 t) ∧ NoE r

theorem finPostC_of_pab {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {s0 : State σ}
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : PAb C H ro t) :
    FinPostC C H tEV tCK P R s0 ro t := by
  intro r hr hna
  obtain ⟨hne, hnr, Γ', hG⟩ := h r hr hna
  exact ⟨Γ', hG, fun v hv => absurd hv (hnr v), hne⟩

theorem finPostC_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {s0 : State σ} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : FinPostC C H tEV tCK P R s0 ro t) (l : Locs) : FinPostC C H tEV tCK P R s0 ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨Γ', hG, hc, hne⟩ := h r hr hna
  refine ⟨Γ', (G_locFree hH t l t.clock).mpr hG, fun v hv => ?_, hne⟩
  obtain ⟨h1, h2, h3, h4⟩ := hc v hv
  have : Phi { t with locals := l } = Phi t := phi_locFree t _ _
  exact ⟨(chainX_locFree t l t.clock).mpr h1, by rw [this]; exact h2, jrNZ_locals h3 l,
    rootK_congr rfl rfl rfl rfl h4⟩

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {s0 : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L0 : Locs}

include Hy

/-- **The tail of `finish_child`.** -/
theorem finTail_hoare {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref)
    (hLc : L0.lookup (nm "child") = some (.val (.word e)))
    (hLp : L0.lookup (nm "parent") = some (.val (.word (fld s0.memory c 0))))
    (hLr : L0.lookup (nm "rec") = some (.val (.word c)))
    (hLos : L0.lookup (nm "out_start") = some (.val (.word (fld s0.memory c 72))))
    (hLosz : L0.lookup (nm "out_size") = some (.val (.word (fld s0.memory c 80))))
    (hLm : L0.lookup (nm "child_mark") = some (.val (.word (fld s0.memory c 48))))
    (hLmm : L0.lookup (nm "child_mem_mark") = some (.val (.word (fld s0.memory c 56))))
    (hLmsg : L0.lookup (nm "msg") = some (.val (.word (fld s0.memory c 40))))
    (hs0 : ChainOf s0 ((e, c) :: (e', c') :: rest)) :
    HoareG σ X (PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0) finTail (FinPostC C H tEV tCK P R s0) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have hD := Hy.drv
  refine hoareG_seq (finA_hoare Hy hLmsg) (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr)
    (fun h => finPostC_of_pab h.2)) ?_
  refine hoareG_pre (P := PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0) ?_
    (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
  -- the facts at the switch
  refine hoareG_pre (P := fun u => ∃ Γa, PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 u ∧
      G C H Γa u ∧ ChainL C tEV tCK Γa u ((e, c) :: (e', c') :: rest) ∧
      ChainE P R Γa u ((e, c) :: (e', c') :: rest)) ?_
    (fun u _ h => let ⟨_, _, Γa, hG, hch, _, _, hx⟩ := h; ⟨Γa, h, hG, hch, hx⟩)
  refine hoareG_ex fun Γa => ?_
  refine hoareG_pre (P := fun u => (∃ uu, uu = u) ∧ PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 u ∧
      G C H Γa u ∧ ChainL C tEV tCK Γa u ((e, c) :: (e', c') :: rest) ∧
      ChainE P R Γa u ((e, c) :: (e', c') :: rest)) ?_
    (fun u _ h => ⟨⟨u, rfl⟩, h⟩)
  intro u hu ⟨_, hpa, hG, hch, hx⟩
  obtain ⟨hfl, hJ, -, -, -, hΦ, hck, -⟩ := hpa
  have hpa : PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 u := ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩
  have hck0 := hck 0 (by omega)
  have hck6 := hck 6 (by omega)
  have hck7 := hck 7 (by omega)
  have hck9 := hck 9 (by omega)
  have hck10 := hck 10 (by omega)
  simp only [show (8 * 0 : Nat) = 0 from rfl, show (8 * 6 : Nat) = 48 from rfl,
    show (8 * 7 : Nat) = 56 from rfl, show (8 * 9 : Nat) = 72 from rfl,
    show (8 * 10 : Nat) = 80 from rfl] at hck0 hck6 hck7 hck9 hck10
  have hic : fld u.memory c 0 = e' ∧ fld u.memory c 8 = c' := by
    obtain ⟨e1, c1, rest1, hfs1, -, -, hic⟩ := hch.chain
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
    cases hic with
    | step _ hp _ =>
        simp only [List.head?_cons, Option.some.injEq, Prod.mk.injEq] at hp
        exact ⟨hp.1.symm, hp.2.symm⟩
  -- `ev = parent`
  have hpv : ev u (lv (nm "parent")) = some (.val (.word e')) := by
    rw [ev_lv, hfl _ (by simp [finNames]), hLp, ← hck0, hic.1]
  let u1 := setGlobalHOLFinite nmEv (.val (.word e')) u
  suffices H0 : HoareG σ X (fun w => w = u) (.seq (.assign .global nmEv (lv (nm "parent")))
      (.seq (.assign .global nmCC (lLoad "rec" 8)) (.seq finB finR))) (FinPostC C H tEV tCK P R s0) from
    H0 u hu rfl
  refine hoareG_seq (R := fun r w => r = none ∧ w = u1) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assignK fun w _ hw v hv _ => ?_
    subst hw
    rw [hpv] at hv; cases hv
    exact ⟨rfl, rfl⟩
  -- `cur_cont = lds 1 (rec + CK_PARENT_CONT)`
  have hrv : ∀ v, ev u1 (lLoad "rec" 8) = some v → v = .val (.word c') := by
    intro v hv
    have hl : u1.locals.lookup (nm "rec") = some (.val (.word c)) := by
      show u.locals.lookup _ = _; rw [hfl _ (by simp [finNames]), hLr]
    rw [ev_lLoad_eq hl hv]
    show ValueHOL.val (.word (fld u.memory c 8)) = _
    rw [hic.2]
  let u2 := setGlobalHOLFinite nmCC (.val (.word c')) u1
  refine hoareG_seq (R := fun r w => r = none ∧ w = u2) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assignK fun w _ ⟨_, hw⟩ v hv _ => ?_
    subst hw
    rw [hrv v hv]
    exact ⟨rfl, rfl⟩
  -- the parent's part and the release
  have hge : u2.globals.lookup nmEv = some (.val (.word e')) := by
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup nmEv = _
    rw [lookup_update_ne _ _ (by decide), lookup_update_self]
  have hgc : u2.globals.lookup nmCC = some (.val (.word c')) := by
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup nmCC = _
    rw [lookup_update_self]
  have hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → u2.globals.lookup g = u.globals.lookup g := by
    intro g h1 h2
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
  obtain ⟨hB, hrd⟩ := finB_switch hD hG hch (t := u2) rfl rfl rfl hge hgc hgo hJ hx
  have hbs : BS C H tEV tCK P R u e c e' c' rest L0 (Gas0 u e') true u2 :=
    ⟨fun x hx => hfl x hx, Γa, hB, hrd, fun _ => rfl, rfl, rfl⟩
  have hout := hch.outRange (e, c) (e', c') ⟨[], rest, rfl⟩
  have hsp0 := hch.stack (e, c) (e', c') ⟨[], rest, rfl⟩
  simp only [ckOutSize, ckOutStart, evMemLen, evSp, evStackCap] at hout hsp0
  rw [hck9, hck10] at hout
  refine hoareG_pre (P := BS C H tEV tCK P R u e c e' c' rest L0 (Gas0 u e') true) ?_
    (fun w _ ⟨_, hw⟩ => hw ▸ hbs)
  refine hoareG_seq (finB_hoare Hy hLc hLos hLosz hout hsp0)
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => finPostC_of_pab h.2)) ?_
  refine hoareG_pre (finR_hoare Hy hR (Γa := Γa) hch (by rw [hLm, hck6]) (by rw [hLmm, hck7]))
    (fun w _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1)) |>
    fun h => hoareG_conseq h (fun _ _ h => h) (fun ro t _ _ hq r hr hna => ?_)
  obtain ⟨Γ', hG', hc', hne⟩ := hq r hr hna
  exact ⟨Γ', hG', fun v hv => let ⟨a, b, d, k⟩ := hc' v hv;
    ⟨a, lt_of_lt_of_le b hΦ, d, rootK_trans (rootK_of_same hs0 hch.chain) k ⟨_, hch.chain⟩⟩, hne⟩

end steps

end InitECandidate.Solver.MemSafe.Frames

import InitECandidate.Solver.MemSafe.Frames.OpenGuest
import InitECandidate.Solver.MemSafe.HtabEntries.StateRestore

/-!
# The `run_frames` bundle with the journal in the invariant (decision 1)

The loop invariant becomes `RFJJ = (∃ Γ, G ∧ Chain) ∧ JrNZ` (`Jr.lean`): the journal global is
non-null, which with `G` gives the `ReqOK` fact of the journal capability (`jr_obj`,
`reqOK_jr`) that `state_restore`, `set_code` and `jset` / `jdel` require.

* **`BundleJ`**: the bundle with `PreOpJ` / `PreInvJ` / `PreFinJ` and the posts `QStepJ` /
  `QExcJ` / `QEpiJ`; `rfHyps_of_bundleJ`, **`run_frames_condCostJ`**.
* `jSpecJ_of_sumSpecA`: a summary that does not write `journal` keeps `JrNZ` (`exc` entry).
* `chain_of_sumCoreNF`: a callee whose `prot` writes avoid every frame record (`PWtop []`) and
  which keeps `frame_mem_ptr` keeps the chain and does not raise `Φ`.
* Guest: **`epi_jSpecA`** (`frame_epilogue` from `csumm_state_restore`), **`fin_srJ`** (the
  `FinHyps.sr` fact from `csumm_state_restore`), **`bundle_ofA`** and
  **`run_frames_condCost_ofA`** (the scoring shape from the open entries `op_dispatch`,
  `finish_child`, and the cost of `state_restore`).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type} {X : Ctx 64}

/-! ## The invariant and the bundle -/

/-- **The loop invariant of `run_frames` with the journal.** -/
def RFJJ (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (s : State σ) : Prop :=
  RFJ C H tEV tCK s ∧ JrNZ s

def RFInvJ (C : Cfg) (H : Hooks σ) (tEV tCK M : Nat) (s : State σ) : Prop :=
  RFJJ C H tEV tCK s ∧ Phi s ≤ M

theorem rfJJ_locFree {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} :
    LocFree (σ := σ) (RFJJ C H tEV tCK) := fun s l c =>
  ⟨fun ⟨h1, h2⟩ => ⟨(rfJ_locFree hH s l c).mp h1, (jrNZ_locFree s l c).mp h2⟩,
   fun ⟨h1, h2⟩ => ⟨(rfJ_locFree hH s l c).mpr h1, (jrNZ_locFree s l c).mpr h2⟩⟩

/-- **The hypothesis bundle of `run_frames` with the journal.** -/
structure BundleJ (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tEV tCK M : Nat)
    (Bop Bexc Bepi Bfin : Nat) : Prop where
  code : X.code.lookup = guestCode
  hooks : HooksLawful C H
  opSum : JSpec σ X C H (nm "op_dispatch") (fun vs s Γ => vs.length = 1 ∧ PreOpJ C tEV tCK M vs s Γ)
    (QStepJ C tEV tCK)
  opCost : CondCost σ X C H (nm "op_dispatch") (sg1 []) (PreOpJ C tEV tCK M) Bop
  excSum : JSpec σ X C H (nm "frame_exception")
    (fun vs s Γ => vs.length = 1 ∧ PreInvJ C tEV tCK M vs s Γ) (QExcJ C tEV tCK)
  excCost : CalleeCost σ X (nm "frame_exception") Bexc
  epiSum : JSpec σ X C H (nm "frame_epilogue") (fun vs s Γ => vs = [] ∧ PreInvJ C tEV tCK M vs s Γ)
    (QEpiJ C tEV tCK)
  epiCost : CondCost σ X C H (nm "frame_epilogue") (sg0 []) (PreInvJ C tEV tCK M) Bepi
  finSum : JSpec σ X C H (nm "finish_child") (fun vs s Γ => vs = [] ∧ PreFinJ C tEV tCK M vs s Γ)
    (QStepJ C tEV tCK)
  finCost : CondCost σ X C H (nm "finish_child") (sg0 []) (PreFinJ C tEV tCK M) Bfin

/-- The journal bundle gives the abstract hypotheses of `RunFramesGen.lean`. -/
theorem rfHyps_of_bundleJ {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    (B : BundleJ σ X C H tEV tCK M Bop Bexc Bepi Bfin) :
    RFHyps σ X (RFJJ C H tEV tCK) Phi M Bop Bexc Bepi Bfin := by
  refine ⟨by rw [B.code]; exact code_run_frames, rfJJ_locFree B.hooks, phi_locFree, ?_, ?_,
    B.excCost, ?_, ?_, ?_, ?_, ?_⟩
  · exact calleeCostP_of_condCost B.opCost (any_sg1 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ, hrd⟩ => ⟨hlen, Γ, hG, ⟨hch, hΦ, hrd⟩, hJ⟩
  · refine FunSpec.mono B.opSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ hrd
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', ⟨hq1, -⟩, hj1, -⟩ :=
        hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ, hrd⟩, hJ⟩
      exact let h := hq1 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj1 v hv⟩, h.2⟩
    · obtain ⟨Γ', hG', ⟨-, hq2⟩, -, hj2⟩ :=
        hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, ⟨hch, hΦ, hrd⟩, hJ⟩
      exact let h := hq2 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj2 v hv⟩, h.2⟩
  · refine FunSpec.mono B.excSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ v hv
    obtain ⟨Γ', hG', hq, hj⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ⟩, hJ⟩
    exact let h := hq v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj v hv⟩, h.2⟩
  · exact calleeCostP_of_condCost B.epiCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ⟩ => ⟨by rw [hlen]; rfl, Γ, hG, ⟨hch, hΦ⟩, hJ⟩
  · refine FunSpec.mono B.epiSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ v hv
    obtain ⟨Γ', hG', hq, hj⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ⟩, hJ⟩
    exact let h := hq v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj v hv⟩, h.2⟩
  · exact calleeCostP_of_condCost B.finCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ, hk⟩ => ⟨by rw [hlen]; rfl, Γ, hG, ⟨hch, hΦ, hk⟩, hJ⟩
  · refine FunSpec.mono B.finSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ hk
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', ⟨hq1, -⟩, hj1, -⟩ :=
        hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ, hk⟩, hJ⟩
      exact let h := hq1 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj1 v hv⟩, h.2⟩
    · obtain ⟨Γ', hG', ⟨-, hq2⟩, -, hj2⟩ :=
        hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, ⟨hch, hΦ, hk⟩, hJ⟩
      exact let h := hq2 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj2 v hv⟩, h.2⟩

/-- **The conditional cost of `run_frames`** under the journal invariant. -/
theorem run_frames_costPJ {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    (B : BundleJ σ X C H tEV tCK M Bop Bexc Bepi Bfin) :
    Spec.Inv.CalleeCostP σ X (nm "run_frames") (fun _ s => RFInvJ C H tEV tCK M s)
      (rfB M Bop Bexc Bepi Bfin) :=
  run_frames_costP_gen (rfHyps_of_bundleJ B)

/-- **The conditional table entry of `run_frames`** (`CondCost`, precondition
`Chain ∧ Φ ≤ M ∧ JrNZ` under `G`). -/
theorem run_frames_condCostJ {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    (B : BundleJ σ X C H tEV tCK M Bop Bexc Bepi Bfin) :
    CondCost σ X C H (nm "run_frames") (sg0 []) (PreInvJ C tEV tCK M)
      (rfB M Bop Bexc Bepi Bfin) := by
  intro vs body callee rs hl
  refine (run_frames_costPJ B vs body callee rs hl).pre
    fun s _ ⟨hloc, Γ, p, hG, _, _, ⟨hch, hΦ⟩, hJ⟩ => ⟨hloc, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ⟩

/-! ## Generic adapters -/

section adapt
variable {C : Cfg} {H : Hooks σ}

theorem sumCore_pw {sg : Sig} {PW PW' : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (h : ∀ a, PW a → PW' a) :
    SumCore C H sg PW' Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := hc
  refine ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩
  rcases ha with h' | h' | h' | h'
  · exact Or.inl h'
  · exact Or.inr (Or.inl h')
  · exact Or.inr (Or.inr (Or.inl h'))
  · exact Or.inr (Or.inr (Or.inr (h a h')))

/-- A summary that does not write `journal` (with unconstrained arguments) as a journal bundle
fact. -/
theorem jSpecJ_of_sumSpecA {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) (hps : ∀ pt ∈ sg.params, pt = .any)
    (hJ : JrPG C) (hgJ : JrOut (sg.gw)) :
    JSpec σ X C H f (fun vs s Γ => vs.length = sg.params.length ∧ Pre vs s Γ ∧ JrNZ s)
      (fun vs s Γ r t Γ' => Q vs s Γ r t Γ' ∧ JrNZ t) := by
  refine FunSpec.mono h fun vs s r t hR hg hna Γ hG ⟨hlen, hpre, hj⟩ => ?_
  have ⟨p, hps', _⟩ := hG
  obtain ⟨Γ', p, p', hcore, hq⟩ := hR hg hna Γ hG ⟨p, hps', argsOK_any hps hlen⟩ hpre
  exact ⟨Γ', sumCore_G hcore, hq, jrNZ_sumCore hJ hgJ hcore hj⟩

/-- **A callee writing no `prot` cell of a frame record** (`PWtop []`), with unconstrained
arguments, not writing `ev` / `cur_cont` and keeping `frame_mem_ptr`, keeps the chain and does
not raise `Φ`. -/
theorem chain_of_sumCoreNF {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {sg : Sig}
    (hps : ∀ pt ∈ sg.params, pt = .any) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw)
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PWtop tEV tCK [] vs s Γ a) Γ s vs r t Γ' p p')
    (hfp : p'.fp = p.fp) {fs : List Frame} (hch : ChainL C tEV tCK Γ s fs) :
    ChainL C tEV tCK Γ' t fs ∧ Phi t ≤ Phi s := by
  obtain ⟨e, c, rest, rfl, -, -, -⟩ := hch.chain
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a :=
    fun a ha => absurd ha (argCells_any hps)
  have hpk := sumCore_prot hc hG hac
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
  have hoeb' : oe.base = e := hoeb
  have hesz : ∀ x ∈ Γ, x.ty = tEV → ∀ k ∈ ([] : List Nat), x.HasSlot k := by simp
  have hsz := ev_size hF hL hoe hoet
  have k8 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 8) (by unfold Obj.HasSlot; omega)
    (by rw [hoet]; exact hF.evProt 8 (by simp [evProtSlots])) fun _ => by simp
  have k24 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 24) (by unfold Obj.HasSlot; omega)
    (by rw [hoet]; exact hF.evProt 24 (by simp [evProtSlots])) fun _ => by simp
  rw [hoeb'] at k8 k24
  simp only [show (8 * 8 : Nat) = 64 from rfl, show (8 * 24 : Nat) = 192 from rfl] at k8 k24
  obtain ⟨h1, h2, -⟩ := pa_core hF hG hch (ks := []) (by simp) hgw hc hac hfp
    (by rw [k8, k24])
  exact ⟨h1, h2⟩

end adapt

/-! ## The journal capability from `G` -/

section guest

/-- **The journal object**: with `G`, a non-null `journal` names a `Γ` journal array. -/
theorem jr_obj {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) (hJ : JrNZ s) :
    ∃ e, e ∈ Γ ∧ e.ty = tJOURNAL ∧ gword s nmJr = some e.base := by
  obtain ⟨p, -, -, -, -, -, hGl, -⟩ := hG
  obtain ⟨v, hv, hfit⟩ := hGl _ _ gt_journal
  obtain ⟨w, hw, hn⟩ := hJ nmJr (by simp [jrGs])
  have hw' : gword s (nm "journal") = some w := hw
  rw [hv, Option.some.injEq] at hw'
  subst hw'
  rcases hfit with h | ⟨o, ho, hob, hot⟩
  · exact absurd hn (by omega)
  · exact ⟨o, ho, hot, by rw [hob]; exact hv⟩

/-- `ReqOK` for capabilities whose only global capability is the journal. -/
theorem reqOK_jr {H : Hooks σ} {cs : List Cap}
    (hcs : ∀ c ∈ cs, c.g ≠ anyG → c.g = nmJr ∧ c.t = tJOURNAL) {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) (hJ : JrNZ s) : ReqOK cs s Γ := by
  intro c hc hne
  obtain ⟨hg, ht⟩ := hcs c hc hne
  obtain ⟨e, he, het, heb⟩ := jr_obj hG hJ
  exact ⟨e, he, het ▸ ht.symm ▸ rfl, hg ▸ heb⟩

theorem gt_skbuf : guestC.GT.lookup (nm "sk_buf") = some (.nptr tB64) := by decide

/-- `JrNZ` and `G` give the `sk_buf` object (a `Γ` object of type `tB64`). -/
theorem sk_obj {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) (hJ : JrNZ s) :
    ∃ e, e ∈ Γ ∧ e.ty = tB64 ∧ gword s nmSk = some e.base := by
  obtain ⟨p, -, -, -, -, -, hGl, -⟩ := hG
  obtain ⟨v, hv, hfit⟩ := hGl _ _ gt_skbuf
  obtain ⟨w, hw, hn⟩ := hJ nmSk (by simp [jrGs])
  have hw' : gword s (nm "sk_buf") = some w := hw
  rw [hv, Option.some.injEq] at hw'
  subst hw'
  rcases hfit with h | ⟨o, ho, hob, hot⟩
  · exact absurd hn (by omega)
  · exact ⟨o, ho, hot, by rw [hob]; exact hv⟩

/-- **`ReqOK` for capabilities whose global capabilities are on `journal` / `sk_buf`** (the merged
fold table's `destroy_storage` / `increment_nonce`; generalizes `reqOK_jr`). -/
theorem reqOK_jrs {H : Hooks σ} {cs : List Cap}
    (hcs : ∀ c ∈ cs, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64))
    {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) (hJ : JrNZ s) : ReqOK cs s Γ := by
  intro c hc hne
  rcases hcs c hc hne with ⟨hg, ht⟩ | ⟨hg, ht⟩
  · obtain ⟨e, he, het, heb⟩ := jr_obj hG hJ
    exact ⟨e, he, het ▸ ht.symm ▸ rfl, hg ▸ heb⟩
  · obtain ⟨e, he, het, heb⟩ := sk_obj hG hJ
    exact ⟨e, he, het ▸ ht.symm ▸ rfl, hg ▸ heb⟩

theorem srCaps_jr : ∀ c ∈ srCaps, c.g ≠ anyG → c.g = nmJr ∧ c.t = tJOURNAL := by decide

theorem srCaps_ks : ∀ c ∈ srCaps, c.ks = [] := by decide

theorem srCaps_t01 : ∀ c ∈ srCaps, c.all = true → c.t ≠ 0 ∧ c.t ≠ 1 := by decide

theorem srCaps_tM : ∀ c ∈ srCaps, c.all = true → c.t ≠ 4 ∧ c.t ≠ 5 ∧ c.t ≠ 76 ∧ c.t ≠ 77 ∧ c.t ≠ 78 ∧ c.t ≠ 80 ∧ c.t ≠ 46 ∧ c.t ≠ 49 ∧ c.t ≠ 50 ∧ c.t ≠ 51 ∧ c.t ≠ 15 ∧ c.t ≠ 16 ∧ c.t ≠ 17 ∧ c.t ≠ 18 := by
  decide

/-- The `prot` cells `state_restore`'s capabilities allow are outside every frame record. -/
theorem srCaps_pw {H : Hooks σ} {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) {a : BitVec 64} (hw : CapPW srCaps s Γ a) :
    PWtopM tEV tCK [] vs s Γ a := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [srCaps_ks c hc] at hk; cases hk
  · have h01 : e.ty ≠ 0 ∧ e.ty ≠ 1 := by
      have := srCaps_t01 c hc hall
      unfold AllTy ownBase at hty
      omega
    have h45 : e.ty ≠ 4 ∧ e.ty ≠ 5 ∧ e.ty ≠ 76 ∧ e.ty ≠ 77 ∧ e.ty ≠ 78 ∧ e.ty ≠ 80 ∧ e.ty ≠ 46 ∧ e.ty ≠ 49 ∧ e.ty ≠ 50 ∧ e.ty ≠ 51 ∧ e.ty ≠ 15 ∧ e.ty ≠ 16 ∧ e.ty ≠ 17 ∧ e.ty ≠ 18 := by
      have := srCaps_tM c hc hall
      unfold AllTy ownBase at hty
      omega
    exact noFrameM_cell hG he hks h01 (by simp [msgTys, blockTys]; omega)

/-! ## `frame_epilogue` from the journal entry of `state_restore` -/

/-- The facts carried through `frame_epilogue`. -/
def KJ (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (s0 : State σ) (fs : List Frame) (u : State σ) :
    Prop :=
  ∃ Γ', G C H Γ' u ∧ ChainL C tEV tCK Γ' u fs ∧ Phi u ≤ Phi s0 ∧ JrNZ u

theorem kJ_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {s0 : State σ}
    {fs : List Frame} {u : State σ} (h : KJ C H tEV tCK s0 fs u) (l : Locs) :
    KJ C H tEV tCK s0 fs { u with locals := l } := by
  obtain ⟨Γ', hG, hch, hΦ, hJ⟩ := h
  refine ⟨Γ', (G_locFree hH u l u.clock).mpr hG,
    chainL_congr (s := u) (s' := { u with locals := l }) rfl rfl hch, ?_, jrNZ_locals hJ l⟩
  rw [phi_locFree.loc]; exact hΦ

theorem gJ_eq : gJ = nmJr := rfl

/-- One call of `state_restore` (any good, non-abortive result) from the entry state. -/
theorem epi_srCall {H : Hooks σ} (hFr : FrameCfg guestC H tEV tCK) {s0 : State σ} {Γ : Gam}
    (hG : G guestC H Γ s0) {fs : List Frame} (hch : ChainL guestC tEV tCK Γ s0 fs)
    (hJ0 : JrNZ s0) {vs : List (ValueHOL 64)} (hvs : vs.length = 1) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelA guestC H srSig (fun _ s Γ => ReqOK srCaps s Γ)
      (fun _ s Γ a => CapPW srCaps s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite s0 callee) r st)
    (hfp : st.globals.lookup gFrame = (callEntryStateHOLFinite s0 callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    KJ guestC H tEV tCK s0 fs st := by
  have hH := hFr.hooks
  have hGe : G guestC H Γ (callEntryStateHOLFinite s0 callee) :=
    (G_locFree hH s0 _ _).mpr hG
  have hJe : JrNZ (callEntryStateHOLFinite s0 callee) := jrNZ_congr rfl hJ0
  have ⟨p, hp, _⟩ := hGe
  obtain ⟨Γ', p1, p2, hc, -⟩ := hR hg hna Γ hGe
    ⟨p, hp, argsOK_any (by simp [srSig]) (by simp [srSig, hvs])⟩ (reqOK_jr srCaps_jr hGe hJe)
  have hc' := sumCore_pw (PW' := fun a => ProtCell guestC Γ a ∧
    PWtop tEV tCK [] vs (callEntryStateHOLFinite s0 callee) Γ a) hc
    fun a ⟨hpc, hw⟩ => ⟨hpc, (srCaps_pw hGe hw).1⟩
  have hfp' : p2.fp = p1.fp := fpQ_of_fp hfp p1 p2 hc.1 hc.2.1
  obtain ⟨hcl, hΦ⟩ := chain_of_sumCoreNF hFr (by simp [srSig]) (by decide) hGe hc' hfp'
    (chainL_congr (s := s0) (s' := callEntryStateHOLFinite s0 callee) rfl rfl hch)
  refine ⟨Γ', hc.2.2.2.2.2.1, hcl, ?_, jrNZ_sumCore (by decide) (by decide) hc hJe⟩
  rw [phi_locFree.entry] at hΦ; exact hΦ

/-- **`frame_epilogue`'s journal bundle entry** (`epiSum` of `BundleJ`), from the journal entry
of `state_restore` and its `KeepsFp` fact. -/
theorem epi_jSpecA {H : Hooks σ} (hX : X.code.lookup = guestCode) (hFr : FrameCfg guestC H tEV tCK)
    (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (srFp : KeepsFp σ X (nm "state_restore")) (M : Nat) :
    JSpec σ X guestC H (nm "frame_epilogue")
      (fun vs s Γ => vs = [] ∧ PreInvJ guestC tEV tCK M vs s Γ) (QEpiJ guestC tEV tCK) := by
  have hH := hFr.hooks
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨_, ⟨⟨fs, hch⟩, _⟩, hJ0⟩
  rw [hX] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_epi hl
  have hsr := FunSpec.and (csumm_fs hsrC) srFp
  let KQ : Option (PanSemResultExact 64) → State σ → Prop := fun ro t =>
    (∀ r, ro = some r → ¬ Abortive r) → KJ guestC H tEV tCK s0 fs t
  have key : ∀ (s : State σ), s = s0 → ∀ vs, evs s [gLoad "cur_cont" 24] = some vs →
      ∀ callee r st, (SumRelA guestC H srSig (fun _ s Γ => ReqOK srCaps s Γ)
        (fun _ s Γ a => CapPW srCaps s Γ a) (fun _ _ _ _ _ _ => True) vs
        (callEntryStateHOLFinite s callee) r st ∧
        (Good (some r) → ¬ Abortive r → st.globals.lookup gFrame =
          (callEntryStateHOLFinite s callee).globals.lookup gFrame)) →
      Good (some r) → ¬ Abortive r → KJ guestC H tEV tCK s0 fs st := by
    intro s hs vs hvs callee r st ⟨hR, hfpR⟩ hg' hna'
    subst hs
    exact epi_srCall hFr hG hch hJ0 (evs_one hvs) hR (hfpR hg' hna') hg' hna'
  have H0 : HoareG σ X (fun u => u = s0) epiBody (fun ro t => KQ ro t) := by
    refine hoareG_seq (R := KQ) ?_ (fun r t _ _ _ h => h) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_callD hsr ?_ ?_
        · intro s _ ⟨hs, _⟩ vs hvs callee v st hR _ _
          exact kJ_locals hH (key s hs vs hvs callee _ st hR (by simp [Good])
            (not_abortive_ret v)) _
        · intro s _ ⟨hs, _⟩ vs hvs callee r st hR _ habn hpr
          exact kJ_locals hH (key s hs vs hvs callee r st hR (good_of_abn habn) (hpr r rfl)) _
      · refine hoareG_skip fun s _ ⟨hs, _⟩ _ => ?_
        subst hs
        exact ⟨Γ, hG, hch, le_refl _, hJ0⟩
    · refine hoareG_return fun u _ hu v _ _ => ?_
      exact kJ_locals hH (hu fun r h => by cases h) _
  have hKJ := H0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at hKJ
  obtain ⟨Γ', hG', hch', hΦ', hJ'⟩ := hKJ fun r' h => by cases h; exact hna
  exact ⟨Γ', hG', fun v _ => ⟨⟨fs, hch'⟩, hΦ'⟩, fun v _ => hJ'⟩

/-! ## `FinHyps.sr` from the journal entry -/

/-- **`state_restore` in the `FinHyps.sr` shape**, from `csumm_state_restore` (`journal` non-null
gives its `ReqOK`; its table writes avoid every frame record), its `KeepsFp` fact and
`noExc_state_restore`. -/
theorem fin_srJ {H : Hooks σ} (hX : X.code.lookup = guestCode)
    (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (srFp : KeepsFp σ X (nm "state_restore")) :
    SumSpecA σ X guestC H (nm "state_restore") (sgA 1 [gJn]) (fun _ s _ => JrNZ s)
      (PWtopM tEV tCK []) FQ :=
  finSpec_of hsrC srFp (noEvm_of_noExc (noExc_state_restore hX))
    ⟨rfl, rfl, rfl, fun h => by cases h⟩ (fun _ _ _ hG hJ => reqOK_jr srCaps_jr hG hJ)
    (fun _ _ _ _ hG _ _ hw => srCaps_pw hG hw)

/-! ## The bundle from the open entries -/

/-- `frame_exception`'s journal bundle entry. -/
theorem exc_jSpecJ {H : Hooks σ} (hX : X.code.lookup = guestCode) (hFr : FrameCfg guestC H tEV tCK)
    (M : Nat) :
    JSpec σ X guestC H (nm "frame_exception")
      (fun vs s Γ => vs.length = 1 ∧ PreInvJ guestC tEV tCK M vs s Γ) (QExcJ guestC tEV tCK) :=
  jSpec_mono (jSpecJ_of_sumSpecA (sumSpecA_of_sumSpec (exc_sumSpec hX hFr M))
    (any_sg1 _) (by decide) (by simp [sg1]))
    (fun _ _ _ ⟨h1, h2, h3⟩ => ⟨by rw [h1]; rfl, h2, h3⟩)
    (fun _ _ _ _ _ _ _ ⟨h1, h2⟩ => ⟨h1, fun _ _ => h2⟩)

/-- **The journal bundle** from the entries still open: `op_dispatch` (summary and cost),
`finish_child` (`fin_jSpec` / `fin_condCost` once `FinHyps` is discharged), and the `KeepsFp`
fact and cost of `state_restore`. `frame_exception` and `frame_epilogue` are discharged here
(`frame_epilogue` through `csumm_state_restore`). -/
theorem bundle_ofA {H : Hooks σ} {M Bop Bfin Bsr : Nat} (hX : X.code.lookup = guestCode)
    (hFr : FrameCfg guestC H tEV tCK) (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (opSum : JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (opCost : CondCost σ X guestC H (nm "op_dispatch") (sg1 []) (PreOpJ guestC tEV tCK M)
      Bop)
    (finSum : JSpec σ X guestC H (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (finCost : CondCost σ X guestC H (nm "finish_child") (sg0 [])
      (PreFinJ guestC tEV tCK M) Bfin)
    (srFp : KeepsFp σ X (nm "state_restore")) (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    BundleJ σ X guestC H tEV tCK M Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin :=
  ⟨hX, hFr.hooks, opSum, opCost, exc_jSpecJ hX hFr M, exc_cost hX,
    epi_jSpecA hX hFr hsrC srFp M, Spec.Inv.calleeCostP_of_calleeCost (epi_cost hX srCost),
    finSum, finCost⟩

/-- **The scoring shape from the open entries** (journal invariant). -/
theorem run_frames_condCost_ofA {H : Hooks σ} {M Bop Bfin Bsr : Nat}
    (hX : X.code.lookup = guestCode) (hFr : FrameCfg guestC H tEV tCK)
    (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (opSum : JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (opCost : CondCost σ X guestC H (nm "op_dispatch") (sg1 []) (PreOpJ guestC tEV tCK M)
      Bop)
    (finSum : JSpec σ X guestC H (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (finCost : CondCost σ X guestC H (nm "finish_child") (sg0 [])
      (PreFinJ guestC tEV tCK M) Bfin)
    (srFp : KeepsFp σ X (nm "state_restore")) (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    CondCost σ X guestC H (nm "run_frames") (sg0 []) (PreInvJ guestC tEV tCK M)
      (rfB M Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin) :=
  run_frames_condCostJ (bundle_ofA hX hFr hsrC opSum opCost finSum finCost srFp srCost)

/-- The guest instances for the journal family (`csumm_state_restore`). -/
theorem bundle_ofA_J {M Bop Bfin Bsr : Nat} (hF : FoldOK σ X guestC guestHooksJ)
    (opSum : JSpec σ X guestC guestHooksJ (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (opCost : CondCost σ X guestC guestHooksJ (nm "op_dispatch") (sg1 []) (PreOpJ guestC tEV tCK M)
      Bop)
    (finSum : JSpec σ X guestC guestHooksJ (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (finCost : CondCost σ X guestC guestHooksJ (nm "finish_child") (sg0 [])
      (PreFinJ guestC tEV tCK M) Bfin)
    (srFp : KeepsFp σ X (nm "state_restore")) (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    BundleJ σ X guestC guestHooksJ tEV tCK M Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin :=
  bundle_ofA hF.hX frameCfg_guestHooksJ (csumm_state_restore hF) opSum opCost finSum finCost srFp
    srCost

end guest

end InitECandidate.Solver.MemSafe.Frames

import InitECandidate.Solver.MemSafe.HtabEntries.Del
import InitECandidate.Solver.MemSafe.Hooks.Journal
import InitECandidate.Solver.MemSafe.Struct.Run

/-!
# Tracking a body that writes `journal_n` and calls the table entries

`TrkJ H Γ0 s0 p0 PW Γ t`: ms-struct's `Trk` with `journal_n` exempt from the protected-globals
clause. `trkJ_call` composes a callee `SumCore` into it (callee cells may also be fresh since
entry); `capBack` maps a callee's all-cells capability footprint back to the entry typing;
`sumCore_of_trkJ` turns the final state into the caller's `SumCore`.

`G_jn_dec`: lowering `journal_n` by one keeps `G` for the journal family (the hook only drops
the popped record).
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def TrkJ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (PW : BitVec 64 → Prop)
    (Γ : Gam) (t : State σ) : Prop :=
  ∃ p, ptrsOf t = some p ∧ p0.Mono p ∧ Ext Γ0 Γ ∧ NewFresh Γ0 Γ p0 p ∧ G guestC H Γ t ∧
    ModifiesOnly (fun a => WCell guestC Γ0 a ∨ ¬ p0.Allocated a.toNat ∨ PW a) s0.memory t.memory ∧
    (∀ g ∈ guestC.PG, g ≠ gJn → t.globals.lookup g = s0.globals.lookup g) ∧
    t.memaddrs = s0.memaddrs ∧ t.be = s0.be

section trk
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

theorem trkJ_refl (hG : G guestC H Γ0 s0) (hp : ptrsOf s0 = some p0) : TrkJ H Γ0 s0 p0 PW Γ0 s0 :=
  ⟨p0, hp, Struct.mono_refl p0, Struct.ext_refl Γ0, Struct.newFresh_refl Γ0 p0 p0, hG, fun _ _ => rfl,
    fun _ _ _ => rfl, rfl, rfl⟩

theorem trkJ_congr (hH : HooksLawful guestC H) {Γ : Gam} {t t' : State σ}
    (h : TrkJ H Γ0 s0 p0 PW Γ t) (hm : t'.memory = t.memory) (hg : t'.globals = t.globals)
    (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be) : TrkJ H Γ0 s0 p0 PW Γ t' := by
  obtain ⟨p, hp, hm0, hx, hnf, hG, hmod, hpg, hd0, hbe0⟩ := h
  refine ⟨p, by rw [← hp]; unfold ptrsOf gword; rw [hg], hm0, hx, hnf,
    Struct.G_congr hH hm hg hd hbe hG,
    fun a ha => by rw [hm]; exact hmod a ha, fun g hg' hne => by rw [hg]; exact hpg g hg' hne,
    hd.trans hd0, hbe.trans hbe0⟩

theorem trkJ_call {Γ Γ' : Gam} {t t' st : State σ} {sg : Sig} {PW' : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : TrkJ H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals)
    (hc : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW' a) Γ t' vs r st Γ' p p')
    (hgw : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hArg : ∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hPW : ∀ a, ProtCell guestC Γ a → PW' a → PW a ∨ ¬ p0.Allocated a.toNat)
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) : TrkJ H Γ0 s0 p0 PW Γ' st := by
  obtain ⟨p1, hp1, hm1, hx1, hnf1, hG1, hmod1, hpg1, hd1, hbe1⟩ := h
  obtain ⟨hpe, hpst, hmc, hxc, hnfc, hGc, hmodc, hpgc, -, -⟩ := hc
  have hpe' : ptrsOf t = some p := by rw [← hpe]; unfold ptrsOf gword; rw [htg]
  rw [hp1] at hpe'
  cases hpe'
  obtain ⟨q, hq, hordp, hLp, -⟩ := hG1
  rw [hp1] at hq
  cases hq
  refine ⟨p', hpst, Struct.mono_trans hm1 hmc, Struct.ext_trans hx1 hxc,
    Struct.newFresh_trans hm1 hmc hnf1 hnfc, hGc, ?_, ?_, hd.trans hd1, hbe.trans hbe1⟩
  · intro a ha
    have e1 : st.memory a = t.memory a := by
      rw [← htm]
      refine hmodc a fun hc => ?_
      rcases hc with hw | harg | hna | ⟨hpc, hpw⟩
      · rcases Struct.wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
        · exact ha (Or.inl h')
        · exact ha (Or.inr (Or.inl h'))
      · rcases hArg a harg with hw | hna | hpw
        · rcases Struct.wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
          · exact ha (Or.inl h')
          · exact ha (Or.inr (Or.inl h'))
        · exact ha (Or.inr (Or.inl hna))
        · exact ha (Or.inr (Or.inr hpw))
      · exact ha (Or.inr (Or.inl (Struct.notAlloc_mono hm1 hna)))
      · rcases hPW a hpc hpw with h' | h'
        · exact ha (Or.inr (Or.inr h'))
        · exact ha (Or.inr (Or.inl h'))
    rw [e1, hmod1 a ha]
  · intro g hg hne
    rw [hpgc g hg (hgw g hg), htg, hpg1 g hg hne]

theorem trkJ_G {Γ : Gam} {t : State σ} (h : TrkJ H Γ0 s0 p0 PW Γ t) : G guestC H Γ t := by
  obtain ⟨-, -, -, -, -, hG, -⟩ := h
  exact hG

/-- The final `SumCore` (signature with `gw ⊇ [journal_n]`, no result constraint). -/
theorem sumCore_of_trkJ {Γ : Gam} {t : State σ} {sg : Sig} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (h : TrkJ H Γ0 s0 p0 PW Γ t) (hp0 : ptrsOf s0 = some p0)
    (hgw : gJn ∈ sg.gw) (hgr : sg.grows = true) (hret : sg.ret = []) :
    ∃ p', SumCore guestC H sg PW Γ0 s0 vs r t Γ p0 p' := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, -, -⟩ := h
  refine ⟨p, hp0, hp, hm, hx, hnf, hG, ?_, ?_, ?_, ?_⟩
  · refine hmod.mono fun a ha => ?_
    rcases ha with h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inr (Or.inl h))
    · exact Or.inr (Or.inr (Or.inr h))
  · exact fun g hg hng => hpg g hg (fun e => hng (e ▸ hgw))
  · intro h; rw [hgr] at h; cases h
  · intro v _ i rt w hi _
    rw [hret] at hi; cases hi

end trk

/-! ## Capabilities -/

/-- An all-cells capability footprint of a callee maps back to the entry typing (an old cell of
an object of the same type), or the cell was unallocated at entry. -/
theorem capBack {Γ0 Γ : Gam} {p0 p : Ptrs} (hord0 : p0.Ordered) (hord : p.Ordered)
    (hm : p0.Mono p) (hL0 : Layout guestC p0 Γ0) (hL : Layout guestC p Γ)
    (hnf : NewFresh Γ0 Γ p0 p) {cs cs0 : List Cap}
    (hcs : ∀ c ∈ cs, c.ks = [] ∧ ∃ c0 ∈ cs0, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t)
    {s s0 : State σ} {a : BitVec 64} (hpc : ProtCell guestC Γ a) (hpw : CapPW cs s Γ a) :
    (ProtCell guestC Γ0 a ∧ CapPW cs0 s0 Γ0 a) ∨ ¬ p0.Allocated a.toNat := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨-, e, he, hty, k, hks, rfl⟩⟩ := hpw
  · rw [(hcs c hc).1] at hk; cases hk
  obtain ⟨c0, hc0, hall0, hty0⟩ := (hcs c hc).2
  obtain ⟨o', ho', k', hk', hprot, he'⟩ := hpc
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL he ho' hks hk' he'
  obtain ⟨hcn, -⟩ := cell_toNat hord hL he hks
  have hin1 : e.lo ≤ (e.cell k).toNat := by rw [hcn]; omega
  have hin2 : (e.cell k).toNat < e.hi := by
    rw [hcn]; unfold Obj.HasSlot at hks; unfold Obj.hi Obj.lo; omega
  rcases hnf e he _ hin1 hin2 with ⟨o0, ho0, hb, ht, hl, hh⟩ | hf
  · left
    have hk0 : o0.HasSlot k := by
      unfold Obj.HasSlot
      rw [hcn] at hl hh
      simp only [Obj.lo, Obj.hi, hb] at hl hh
      unfold Obj.HasSlot at hks
      have h8 := (hL0.1 o0 ho0).2.1
      have h8' := (hL.1 e he).2.1
      omega
    have hc' : e.cell k = o0.cell k := by unfold Obj.cell; rw [hb]
    refine ⟨⟨o0, ho0, k, hk0, by rw [ht]; exact hprot, hc'⟩, c0, hc0, Or.inr ⟨hall0, o0, ho0,
      by rw [ht]; exact hty0 _ hty, k, hk0, hc'⟩⟩
  · exact Or.inr (Struct.fresh_notAlloc hord0 hord hm hf)

/-! ## Lowering `journal_n` -/

theorem setG_ne {s : State σ} {g g' : MlS} {v : ValueHOL 64} (h : g' ≠ g) :
    (setKvarHOLFinite .global g v s).globals.lookup g' = s.globals.lookup g' :=
  lookup_update_ne _ _ (Ne.symm h)

theorem setG_self {s : State σ} {g : MlS} {v : ValueHOL 64} :
    (setKvarHOLFinite .global g v s).globals.lookup g = some v := lookup_update_self _ _ _

theorem gword_setG_ne {s : State σ} {g g' : MlS} {v : ValueHOL 64} (h : g' ≠ g) :
    gword (setKvarHOLFinite .global g v s) g' = gword s g' := by
  unfold gword; rw [setG_ne h]

theorem sub1_toNat {J : BitVec 64} (h : 1 ≤ J.toNat) : (J - BitVec.ofNat 64 1).toNat = J.toNat - 1 := by
  rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, BitVec.toNat_ofNat]; simp only [Nat.reducePow, Nat.one_mod]; omega)]
  simp only [BitVec.toNat_ofNat, Nat.reducePow, Nat.one_mod]

theorem gt_jn : guestC.GT.lookup gJn = some .scalar := by decide

/-- **Lowering `journal_n` by one keeps `G`** for the journal family. -/
theorem G_jn_dec {Γ : Gam} {u : State σ} (hG : G guestC guestHooksJ Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) (h1 : 1 ≤ J.toNat) :
    G guestC guestHooksJ Γ (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) := by
  have hgw : ∀ g, g ≠ gJn →
      gword (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) g = gword u g :=
    fun g h => gword_setG_ne h
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hpt : ptrsOf (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) = ptrsOf u := by
    unfold ptrsOf; rw [hgw gHeap (by decide), hgw gFrame (by decide), hgw gScratch (by decide)]
  refine ⟨p, hpt ▸ hp, hord, hL, hF, hT, fun g k hk => ?_, fun o ho => ?_⟩
  · by_cases hg : g = gJn
    · subst hg
      rw [gt_jn] at hk
      cases hk
      exact ⟨J - BitVec.ofNat 64 1, by unfold gword; rw [setG_self], trivial⟩
    · obtain ⟨v, hv, hf⟩ := hGl g k hk
      exact ⟨v, (hgw g hg).trans hv, hf⟩
  · obtain ⟨hw1, hw2⟩ := hW o ho
    refine ⟨guestHooks_glob Γ u _ o hw1 rfl rfl rfl, fun ht hj => ?_⟩
    rw [hgw gJ (by decide)] at hj
    obtain ⟨ho', hGo, n, c, hn, hc, hnc, hcs, hce, he⟩ := hw2 ht hj
    have hnJ : n = J := by
      unfold gword at hn; rw [hJ] at hn; cases hn; rfl
    subst hnJ
    have e := sub1_toNat h1
    refine ⟨ho', hGo, n - BitVec.ofNat 64 1, c, by unfold gword; rw [setG_self],
      by rw [hgw gJc (by decide)]; exact hc, by omega, hcs, hce, fun i hi => he i (by omega)⟩

end InitECandidate.Solver.MemSafe.HtabEntries

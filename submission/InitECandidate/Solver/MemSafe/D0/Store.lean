import InitECandidate.Solver.MemSafe.D0.Cong

/-!
# A write to inert cells keeps the run, the chain, its extension and the weights

`inert_write`: a memory change confined to a set `Z` of cells, none of which the chain reads (EV
slots other than `FreeOff`, CK records, message cells other than `16` / `32`), whose cells are not
hook footprints (`SafeCells`), keeps `G` (a `Run` with `Γ' = Γ`), `ChainL`, `ChainE GP GR` and
the weight `wsum` of the whole chain. Generalizes `Frames.top_write` / `chainE_top` from the
driver slots to the EV slots `6, 7, 10, 25` and the message cells (`msg[48]`, `[104]`, `[112]`,
`[120]`, `[168]`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- Byte offsets of the free EV slots `6, 7, 10, 25` (`EV_CODE`, `EV_CODE_N`, `EV_JUMPDESTS`,
`EV_AUTH_STATE_GAS_USED`). -/
def FreeOff (k : Nat) : Prop := k = 48 ∨ k = 56 ∨ k = 80 ∨ k = 200

/-- The inertness condition on a cell set `Z`. -/
def InertZ (Γ : Gam) (Z : BitVec 64 → Prop) : Prop :=
  ∀ o ∈ Γ, ∀ k, k < o.size →
    ((o.ty = tEV ∧ ¬ FreeOff k) ∨ o.ty = tCK ∨ ((o.ty = tMSGh ∨ o.ty = tMSGs) ∧ (k = 16 ∨ k = 32)) ∨
      LstTy o.ty) →
      ¬ Z (o.base + BitVec.ofNat 64 k)

theorem inert_write {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ : Gam}
    {s t : State σ} {fs rest : List Frame} {e c : BitVec 64} (hG : G guestC H Γ s)
    (hch : ChainL guestC tEV tCK Γ s fs) (hE : ChainE GP GR Γ s fs) (hfs : fs = (e, c) :: rest)
    {Z : BitVec 64 → Prop} (hmod : ModifiesOnly Z s.memory t.memory)
    (hsafe : SafeCells guestC H Γ s Z) (hZ : InertZ Γ Z) (hglob : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) :
    ∃ p, Run guestC H gw Γ s Γ t p p ∧ ChainL guestC tEV tCK Γ t fs ∧ ChainE GP GR Γ t fs ∧
      wsum t.memory fs = wsum s.memory fs ∧
      (∀ f ∈ fs, ∀ k, k < 280 → ¬ FreeOff k → fld t.memory f.1 k = fld s.memory f.1 k) := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  have hG' : G guestC H Γ t := G_safe hF.hooks hG hsafe hmod hglob hd hbe
  have hrun : Run guestC H gw Γ s Γ t p p := by
    refine ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, Frames.mono_refl p, Frames.ext_refl Γ,
      Frames.newFresh_refl Γ p, hG', fun a ha => hmod a fun hr => ha ?_, fun g _ _ => by rw [hglob]⟩
    obtain ⟨o, ho, k, hk, -, -, he, -⟩ := hsafe a hr
    by_cases hp : (guestC.ty o.ty).slot k = .prot
    · exact Or.inr (Or.inl ⟨o, ho, k, hk, hp, he⟩)
    · exact Or.inl ⟨o, ho, k, hk, hp, he⟩
  have keep : ∀ o ∈ Γ, ∀ k, k < o.size →
      ((o.ty = tEV ∧ ¬ FreeOff k) ∨ o.ty = tCK ∨
        ((o.ty = tMSGh ∨ o.ty = tMSGs) ∧ (k = 16 ∨ k = 32)) ∨ LstTy o.ty) →
      fld t.memory o.base k = fld s.memory o.base k :=
    fun o ho k hk h => fld_mod hmod (hZ o ho k hk h)
  have keepL : ∀ o ∈ Γ, ∀ k, k < o.size → LstTy o.ty → fld t.memory o.base k = fld s.memory o.base k :=
    fun o ho k hk h => keep o ho k hk (Or.inr (Or.inr (Or.inr h)))
  have kEV : ∀ f ∈ fs, ∀ k, k < 280 → ¬ FreeOff k → fld t.memory f.1 k = fld s.memory f.1 k := by
    intro f hf k hk hnf
    obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
    have hsz := ev_size hF hL ho hot
    rw [← hob]
    exact keep o ho k (by omega) (Or.inl ⟨hot, hnf⟩)
  have kCK : ∀ f ∈ fs, ∀ k, k < 104 → fld t.memory f.2 k = fld s.memory f.2 k := by
    intro f hf k hk
    obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
    have hsz := ck_size hF hL ho hot
    rw [← hob]
    exact keep o ho k (by omega) (Or.inr (Or.inl hot))
  have hnf : ∀ k, (k = 8 ∨ k = 16 ∨ k = 24 ∨ k = 32 ∨ k = 40 ∨ k = 64 ∨ k = 88 ∨ k = 104 ∨ k = 112 ∨
      k = 136 ∨ k = 144 ∨ k = 192 ∨ k = 208 ∨ k = 216 ∨ k = 224 ∨ k = 232) → ¬ FreeOff k := by
    intro k hk hf; unfold FreeOff at hf; omega
  have hkeep : ChainKeep s t fs := by
    refine ⟨gword_congr hglob _, gword_congr hglob _, ?_, ?_, ?_, ?_, ?_⟩
    · intro f hf k hk
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kCK f hf k (by omega)
    · intro f hf k hk
      simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen, List.mem_cons,
        List.mem_nil_iff, or_false] at hk
      exact kEV f (List.mem_of_mem_tail hf) k (by omega) (hnf k (by omega))
    · intro f hf k hk
      simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kEV f (List.mem_of_mem_head? hf) k (by omega) (hnf k (by omega))
    · intro p' hp'
      exact ⟨p', by rw [← ptrsOf_congr hglob]; exact hp', rfl⟩
    · intro f hf k hk
      simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kEV f hf k (by omega) (hnf k (by omega))
  have hst : GStep guestC tEV Γ Γ s t e := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun x hx hxt hne => ?_
    have hsz := ev_size hF hL hx hxt
    exact ⟨keep x hx 8 (by omega) (Or.inl ⟨hxt, by unfold FreeOff; omega⟩),
      keep x hx 24 (by omega) (Or.inl ⟨hxt, by unfold FreeOff; omega⟩)⟩
  have hch' : ChainL guestC tEV tCK Γ t fs :=
    chainL_keep hch hkeep (top := e) (fun f hf => by
      rw [hfs] at hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      rw [← hf]) hst
  have hw : wsum t.memory fs = wsum s.memory fs := by
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kEV f hf k (by omega) (hnf k (by omega))
    · exact kCK f hf ckDone (by unfold ckDone; omega)
  refine ⟨p, hrun, hch', ⟨fun p' hp' f hf => ?_, fun ch pa hadj => ?_⟩, hw, kEV⟩
  · have hp0 : ptrsOf s = some p' := by rw [← ptrsOf_congr hglob]; exact hp'
    have hgp := hE.1 p' hp0 f hf
    obtain ⟨⟨M, hMΓ, hMb, hMt, hMs⟩, -⟩ := id hgp
    have hmb : fld s.memory f.1 112 = M.base := hMb.symm
    have hlk := gp_lst_keep hL hgp keepL
    refine gp_congr hgp (kEV f hf 88 (by omega) (hnf 88 (by omega)))
      (kEV f hf 112 (by omega) (hnf 112 (by omega))) (kEV f hf 136 (by omega) (hnf 136 (by omega)))
      (kEV f hf 208 (by omega) (hnf 208 (by omega))) (kEV f hf 224 (by omega) (hnf 224 (by omega)))
      ?_ ?_ hlk.1 hlk.2.1 hlk.2.2 (logKeep_of_lst keepL)
    · rw [hmb]; exact keep M hMΓ 16 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inl rfl⟩)))
    · rw [hmb]; exact keep M hMΓ 32 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inr rfl⟩)))
  · have hgr := hE.2 ch pa hadj
    obtain ⟨hchm, hpam⟩ := adj_mem hadj
    have hpam' : pa ∈ fs := List.mem_of_mem_tail hpam
    have hpag := hE.1
    obtain ⟨⟨M, ⟨hMΓ, hMb, hMt, hMs⟩, -⟩, -⟩ := hgr.2.1
    have hmb : fld s.memory pa.1 112 = M.base := hMb.symm
    have hlk := gp_lst_keep hL (hpag p hps pa hpam') keepL
    refine gr_congr hgr (kEV ch hchm 136 (by omega) (hnf 136 (by omega)))
      (kEV ch hchm 112 (by omega) (hnf 112 (by omega)))
      (kEV pa hpam' 136 (by omega) (hnf 136 (by omega)))
      (kEV pa hpam' 88 (by omega) (hnf 88 (by omega)))
      (kEV pa hpam' 112 (by omega) (hnf 112 (by omega))) ?_ ?_
      (kCK ch hchm 48 (by omega)) (kCK ch hchm 56 (by omega)) (kCK ch hchm 40 (by omega))
      hlk.1 hlk.2.1
    · rw [hmb]; exact keep M hMΓ 16 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inl rfl⟩)))
    · rw [hmb]; exact keep M hMΓ 32 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inr rfl⟩)))

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.inert_write

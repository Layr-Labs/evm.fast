import InitECandidate.Solver.MemSafe.Frames.Exc

/-!
# Plain summaries keep the chain and `Φ`

`chain_of_sumCore`: a callee whose summary writes no protected cell (`PW = False`), has no
buffer arguments, and does not write `ev` / `cur_cont`, keeps `ChainL` (for its post typing
`Γ'`) and the weight of the chain: every cell `Chain` and `Φ` read is a `prot` cell of a live
`Γ` object (`FrameCfg`), and such cells are outside the summary footprint.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The bytes of a live object are allocated. -/
theorem live_allocated {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {a : BitVec 64} (ha : InO o a) : p.Allocated a.toNat := by
  have h1 := (hL.1 o ho).2.2.2.2
  unfold Ptrs.Ordered at hord
  unfold InO Obj.lo Obj.hi at ha
  unfold Obj.lo at h1
  unfold Region.Live at h1
  unfold Ptrs.Allocated
  split at h1
  · left; omega
  · right; left; omega
  · right; right; omega

/-- A `prot` cell of a `Γ` object lies outside a plain summary footprint. -/
theorem prot_not_foot {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any) {vs : List (ValueHOL 64)} {o : Obj} (ho : o ∈ Γ)
    {k : Nat} (hk : o.HasSlot k) (hp : (C.ty o.ty).slot k = .prot) :
    ¬ (WCell C Γ (o.cell k) ∨ ArgCells ps vs (o.cell k) ∨ ¬ p.Allocated (o.cell k).toNat ∨
      (ProtCell C Γ (o.cell k) ∧ False)) := by
  rintro (⟨o', ho', k', hk', hp', he⟩ | ⟨i, w, -, h⟩ | h | ⟨-, h⟩)
  · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    exact hp' hp
  · rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -⟩
    · exact absurd (hps _ (List.mem_of_getElem? hn)) (by simp)
    · exact absurd (hps _ (List.mem_of_getElem? hn)) (by simp)
  · apply h
    refine live_allocated hord hL ho ?_
    unfold Obj.HasSlot at hk
    have := inO_cell hord hL ho (k := 8 * k) (by omega)
    exact this
  · exact h

/-- The word at slot `k` of a `Γ` object whose slot is `prot` is unchanged by a plain summary. -/
theorem fld_prot_keep {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any) {vs : List (ValueHOL 64)} {m m' : Mem}
    (hmod : ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ False)) m m')
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) (hp : (C.ty o.ty).slot k = .prot) :
    fld m' o.base (8 * k) = fld m o.base (8 * k) := by
  have h := hmod _ (prot_not_foot hord hL hps ho hk hp)
  unfold Obj.cell at h
  unfold fld rd
  rw [h]

/-- EV slot facts from `FrameCfg`. -/
theorem ev_prot_fld {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {ps : List PT}
    (hps : ∀ pt ∈ ps, pt = .any) {vs : List (ValueHOL 64)} {m m' : Mem}
    (hmod : ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ False)) m m')
    {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tEV) {j : Nat} (hj : j ∈ evProtSlots) :
    fld m' o.base (8 * j) = fld m o.base (8 * j) := by
  have hsz := ev_size hF hL ho ht
  have : j ≤ 29 := by simp [evProtSlots] at hj; omega
  exact fld_prot_keep hord hL hps hmod ho (by unfold Obj.HasSlot; omega)
    (by rw [ht]; exact hF.evProt j hj)

theorem ck_prot_fld {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {ps : List PT}
    (hps : ∀ pt ∈ ps, pt = .any) {vs : List (ValueHOL 64)} {m m' : Mem}
    (hmod : ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ False)) m m')
    {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tCK) {j : Nat} (hj : j < 13) :
    fld m' o.base (8 * j) = fld m o.base (8 * j) := by
  have hsz := ck_size hF hL ho ht
  exact fld_prot_keep hord hL hps hmod ho (by unfold Obj.HasSlot; omega)
    (by rw [ht]; exact hF.ckProt j hj)

/-- **A plain summary keeps the chain and its weight.** -/
theorem chain_of_mod {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {p : Ptrs} {Γ Γ' : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {ps : List PT}
    (hpa : ∀ pt ∈ ps, pt = .any) {vs : List (ValueHOL 64)} {s t : State σ}
    (hmod : ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ False)) s.memory t.memory)
    (hev : t.globals.lookup nmEv = s.globals.lookup nmEv)
    (hcc : t.globals.lookup nmCC = s.globals.lookup nmCC) (hext : Ext Γ Γ')
    (hfp : ∀ p', ptrsOf t = some p' → ∃ p, ptrsOf s = some p ∧ p'.fp = p.fp)
    {p' : Ptrs} (hps : ptrsOf s = some p) (hpt : ptrsOf t = some p') (hord' : p'.Ordered)
    (hL' : Layout C p' Γ') (hmo : p.Mono p') (hnf : NewFresh Γ Γ' p p')
    {fs : List Frame} (hch : ChainL C tEV tCK Γ s fs) :
    ChainL C tEV tCK Γ' t fs ∧ wsum t.memory fs = wsum s.memory fs := by
  have hE : ∀ f ∈ fs, ∀ j ∈ evProtSlots, fld t.memory f.1 (8 * j) = fld s.memory f.1 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
    rw [← hob]
    exact ev_prot_fld hF hord hL hpa hmod ho hot hj
  have hK : ∀ f ∈ fs, ∀ j, j < 13 → fld t.memory f.2 (8 * j) = fld s.memory f.2 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
    rw [← hob]
    exact ck_prot_fld hF hord hL hpa hmod ho hot hj
  have hkeep : ChainKeep s t fs := by
    refine ⟨by unfold gword; rw [hev], by unfold gword; rw [hcc], ?_, ?_, ?_, hfp, ?_⟩
    rotate_left 2
    · intro f hf k hk
      have hf' : f ∈ fs := List.mem_of_mem_head? hf
      simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hE f hf' 3 (by simp [evProtSlots])
      · exact hE f hf' 5 (by simp [evProtSlots])
    rotate_left 1
    · intro f hf k hk
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize,
        List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact hK f hf 0 (by omega)
      · exact hK f hf 1 (by omega)
      · exact hK f hf 2 (by omega)
      · exact hK f hf 6 (by omega)
      · exact hK f hf 7 (by omega)
      · exact hK f hf 9 (by omega)
      · exact hK f hf 10 (by omega)
    · intro f hf k hk
      have hf' : f ∈ fs := List.mem_of_mem_tail hf
      simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen,
        List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl
      · exact hE f hf' 2 (by simp [evProtSlots])
      · exact hE f hf' 29 (by simp [evProtSlots])
      · exact hE f hf' 3 (by simp [evProtSlots])
      · exact hE f hf' 5 (by simp [evProtSlots])
      · exact hE f hf' 4 (by simp [evProtSlots])
    · intro f hf k hk
      simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hE f hf 18 (by simp [evProtSlots])
      · exact hE f hf 27 (by simp [evProtSlots])
  have hst : GStep C tEV Γ Γ' s t ((fs.head?.map Prod.fst).getD 0) := by
    refine ⟨p, p', hps, hpt, hord, hord', hL, hL', hmo, hext, hnf, fun e he het _ => ?_⟩
    exact ⟨ev_prot_fld (j := 1) hF hord hL hpa hmod he het (by simp [evProtSlots]),
      ev_prot_fld (j := 3) hF hord hL hpa hmod he het (by simp [evProtSlots])⟩
  have htop : ∀ f ∈ fs.head?, f.1 = (fs.head?.map Prod.fst).getD 0 := by
    intro f hf
    rw [Option.mem_def] at hf
    rw [hf]; rfl
  refine ⟨chainL_keep hch hkeep htop hst, wsum_keep fun f hf => ⟨fun k hk => ?_, hK f hf 4 (by omega)⟩⟩
  simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl | rfl
  · exact hE f hf 8 (by simp [evProtSlots])
  · exact hE f hf 24 (by simp [evProtSlots])
  · exact hE f hf 13 (by simp [evProtSlots])

/-- The same from a `SumCore` with `PW = False` (a `Summ`) whose writes avoid `ev`, `cur_cont`
and which does not move `frame_mem_ptr`. -/
theorem chain_of_sumCore {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {sg : Sig} (hps : ∀ pt ∈ sg.params, pt = .any) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw)
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ False) Γ s vs r t Γ' p p')
    (hfp : p'.fp = p.fp)
    {fs : List Frame} (hch : ChainL C tEV tCK Γ s fs) :
    ChainL C tEV tCK Γ' t fs ∧ Phi t = Phi s := by
  obtain ⟨hps0, hpt, hmo, hext, hnf, hG', hmod, hpg, -⟩ := hc
  obtain ⟨p0, hp0, hord, hL, -⟩ := hG
  rw [hps0, Option.some.injEq] at hp0
  subst hp0
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  rw [hpt, Option.some.injEq] at hq'
  subst hq'
  obtain ⟨h1, h2⟩ := chain_of_mod hF hord hL hps hmod (hpg _ hF.pgEv hgw.1) (hpg _ hF.pgCC hgw.2)
    hext (fun q hq => by rw [hpt, Option.some.injEq] at hq; subst hq; exact ⟨p, hps0, hfp⟩)
    hps0 hpt hord' hL' hmo hnf hch
  exact ⟨h1, by rw [phi_eq h1.chain, phi_eq hch.chain, h2]⟩

/-- A plain summary that also keeps `frame_mem_ptr` (no frame-memory allocation): what a
callee between two `extend_memory` calls must satisfy. -/
def SummFp (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig) : Prop :=
  SumSpec σ X C H f sg (fun _ _ _ => True) (fun _ _ _ _ => False)
    (fun _ s _ _ t _ => ∀ p p', ptrsOf s = some p → ptrsOf t = some p' → p'.fp = p.fp)

end InitECandidate.Solver.MemSafe.Frames

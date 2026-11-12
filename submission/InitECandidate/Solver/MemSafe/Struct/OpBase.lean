import InitECandidate.Solver.MemSafe.Struct.CWM

/-!
# Opcode proofs: shared infrastructure

* `OpQ T base`: the post of a memory opcode for the frame driver: `GAS_LEFT` never increases,
  `EV_MEM` is unchanged, and on a return `GAS_LEFT` dropped by at least `base` and memory
  contiguity holds.
* `OpInv`: the invariant of an opcode body: tracked (`Trk`), `ev` unchanged, the `GAS_LEFT` drop
  so far, `EV_MEM` unchanged, contiguity (once established).
* Callee hypotheses: `PcOK` (`pc_add`), `FootK σ X f i n` (a writer of `n` bytes at argument
  `i`, as the helpers' `FootSpec … (BufPreK i n) (BufRK i n)`), `ROSpec` (read-only).
* `opInv_callSum`: a summarized callee that keeps `Γ`-typing facts, the globals and the slots
  `EV_MEM`, `EV_MEM_CAP`, `GAS_LEFT` keeps `OpInv`; `opInv_foot`: a buffer write into the
  frame memory keeps `OpInv`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {T : STy}

/-- The post of a memory opcode. -/
def OpQ (T : STy) (base : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (_ : Gam) : Prop :=
  ∀ e, EvObj T Γ s e →
    (rd t.memory (e.cell 8)).toNat ≤ (rd s.memory (e.cell 8)).toNat ∧
    fMEM t.memory e = fMEM s.memory e ∧
    ((∃ v, r = .returned v) → (rd t.memory (e.cell 8)).toNat + base ≤ (rd s.memory (e.cell 8)).toNat ∧
      ∀ p, ptrsOf t = some p → (fMEM t.memory e).toNat + (fMCAP t.memory e).toNat = p.fp)

/-- The invariant of an opcode body. -/
def OpInv (C : Cfg) (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (PWs : BitVec 64 → Prop) (e : Obj) (GLb : Nat) (cont : Prop) (t : State σ) : Prop :=
  ∃ Γ, Trk C H Γ0 s0 p0 PWs Γ t ∧ t.globals.lookup gEv = some (.val (.word e.base)) ∧
    (rd t.memory (e.cell 8)).toNat + GLb ≤ (rd s0.memory (e.cell 8)).toNat ∧
    fMEM t.memory e = fMEM s0.memory e ∧
    (cont → ∀ p, ptrsOf t = some p → (fMEM t.memory e).toNat + (fMCAP t.memory e).toNat = p.fp)

theorem opInv_congr (hH : HooksLawful C H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat} {cont : Prop} {t t' : State σ}
    (h : OpInv C H Γ0 s0 p0 PWs e GLb cont t) (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be) :
    OpInv C H Γ0 s0 p0 PWs e GLb cont t' := by
  obtain ⟨Γ, ht, hev, hgl, hmem, hc⟩ := h
  refine ⟨Γ, trk_congr hH ht hm hg hd hbe, by rw [hg]; exact hev, by rw [hm]; exact hgl,
    by unfold fMEM; rw [hm]; exact hmem, fun hct p hp => ?_⟩
  unfold fMEM fMCAP; rw [hm]
  exact hc hct p (by rw [← hp]; exact ptrsOf_congr hg.symm)

/-! ## Callee hypotheses -/

/-- `pc_add`: a summary writing no protected cell, keeping `Γ` and the globals. -/
structure PcOK (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (T : STy) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop where
  spec : SumSpec σ X C H (nm "pc_add") sg Pre PW Q
  params : sg.params = [.any]
  gw : ∀ g ∈ C.PG, g ∉ sg.gw
  pre : ∀ vs s Γ e, EvObj T Γ s e → Pre vs s Γ
  pw : ∀ vs s Γ a, ¬ PW vs s Γ a
  q : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → Γ' = Γ ∧ t.globals = s.globals

/-- The buffer argument `i` of constant size `n` ends below `scratchEnd`. -/
def BufPreK' (i n : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs i = some D ∧ D.toNat + n ≤ scratchEnd

/-- The cells of the buffer argument `i` of constant size `n`. -/
def BufRK' (i n : Nat) (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D : BitVec 64, argW vs i = some D ∧ Overlap D.toNat n a

/-- A writer of `n` bytes at argument `i` (the helpers' `FootSpec … (BufPreK i n) (BufRK i n)`). -/
def FootK (σ : Type) (X : Ctx 64) (f : MlS) (i n : Nat) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → BufPreK' i n vs →
    t.globals = s.globals ∧ ModifiesOnly (BufRK' i n vs) s.memory t.memory)

/-- A read-only function. -/
def ROSpec (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s r t => Good (some r) → t.globals = s.globals ∧ t.memory = s.memory)

/-! ## Steps -/

/-- The running EV object of a tracked state is (up to its size) the entry's. -/
theorem trk_ev {Γ0 Γ : Gam} {s0 t : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj}
    (h : Trk C H Γ0 s0 p0 PWs Γ t) (he : e ∈ Γ0) (het : e.ty = T.ev) :
    ∃ e', e' ∈ Γ ∧ e'.base = e.base ∧ e'.ty = T.ev := by
  obtain ⟨-, -, -, hx, -⟩ := h
  obtain ⟨e', he', hb, ht, -⟩ := hx e he
  exact ⟨e', he', hb, ht.trans het⟩

theorem trk_hook {Γ0 Γ : Gam} {s0 t : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop}
    (h : Trk C H Γ0 s0 p0 PWs Γ t) : ∀ o ∈ Γ, H.wf Γ t o := by
  obtain ⟨_, _, _, _, _, hG, _⟩ := h
  obtain ⟨_, _, _, _, _, _, _, hW⟩ := hG
  exact hW

/-- The protected EV slots the opcode invariant reads: `EV_MEM`, `EV_MEM_CAP`, `GAS_LEFT`. -/
theorem ev358_prot (hE : EvCfg C T) (hGLp : (C.ty T.ev).slot 8 = .prot) {p : Ptrs} {Γ : Gam}
    (hL : Layout C p Γ) {e : Obj} (he : e ∈ Γ) (het : e.ty = T.ev) {k : Nat}
    (hk : k ∈ [3, 5, 8]) : ProtCell C Γ (e.cell k) := by
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
  rcases hk with rfl | rfl | rfl
  · exact smCell_prot hE hL he het ⟨3, by decide, rfl⟩
  · exact smCell_prot hE hL he het ⟨5, by decide, rfl⟩
  · exact ⟨e, he, 8, ev_hasSlot hE hL he het (by omega), het ▸ hGLp, rfl⟩

/-- `OpInv` from the facts about the three slots. -/
theorem opInv_of {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj}
    {GLb : Nat} {cont : Prop} {u st : State σ} {Γ' : Gam}
    (h : OpInv C H Γ0 s0 p0 PWs e GLb cont u) (ht : Trk C H Γ0 s0 p0 PWs Γ' st)
    (hg : st.globals = u.globals)
    (hk : ∀ k ∈ [3, 5, 8], rd st.memory (e.cell k) = rd u.memory (e.cell k)) :
    OpInv C H Γ0 s0 p0 PWs e GLb cont st := by
  obtain ⟨Γ, -, hev, hgl, hmem, hc⟩ := h
  refine ⟨Γ', ht, by rw [hg]; exact hev, by rw [hk 8 (by simp)]; exact hgl,
    by unfold fMEM; rw [hk 3 (by simp)]; exact hmem, fun hct p hp => ?_⟩
  unfold fMEM fMCAP; rw [hk 3 (by simp), hk 5 (by simp)]
  exact hc hct p (by rw [← hp]; exact ptrsOf_congr hg.symm)

/-- A buffer write into the frame memory keeps `OpInv`. -/
theorem opInv_foot (hH : HooksLawful C H) (hE : EvCfg C T) (hK : EvHook C H T)
    (hGLp : (C.ty T.ev).slot 8 = .prot) {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat} {cont : Prop}
    (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (he0 : e ∈ Γ0) (het : e.ty = T.ev)
    {u st : State σ} (h : OpInv C H Γ0 s0 p0 PWs e GLb cont u)
    (hg : st.globals = u.globals) (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be)
    {R : BitVec 64 → Prop} (hmod : ModifiesOnly R u.memory st.memory)
    (hR : ∀ Γ, Trk C H Γ0 s0 p0 PWs Γ u → ∀ a, R a → InSM T Γ a) :
    OpInv C H Γ0 s0 p0 PWs e GLb cont st := by
  obtain ⟨Γ, ht, hev, hgl, hmem, hc⟩ := id h
  obtain ⟨e', he', hb', ht'⟩ := trk_ev ht he0 het
  obtain ⟨q, hq, hord, hL⟩ := trk_ptrs ht
  have hmod' : ModifiesOnly (InSM T Γ) u.memory st.memory :=
    hmod.mono fun a ha => hR Γ ht a ha
  have hsm : EvSM T Γ u.memory e' := hK.get Γ u e' he' ht' (trk_hook ht e' he')
  have ht2 : Trk C H Γ0 s0 p0 PWs Γ st :=
    trk_sm (ks := []) hH hE hK ht hord0 hL0 he' ht' hg hd hbe (hmod'.mono fun a h => Or.inr h)
      (fun k hk => by cases hk) (evSM_congr (fields_of_inSM hE hord hL he' ht' hmod') hsm)
  refine opInv_of h ht2 hg fun k hk => ?_
  rw [← cells_base hb', rd, hmod' _ (prot_not_inSM hE hord hL (ev358_prot hE hGLp hL he' ht' hk)),
    ← rd]

/-- A summarized callee with `.any` parameters, keeping the globals and writing none of
`EV_MEM`, `EV_MEM_CAP`, `GAS_LEFT`, keeps `OpInv`. -/
theorem opInv_callSum (hH : HooksLawful C H) (hE : EvCfg C T) (hGLp : (C.ty T.ev).slot 8 = .prot)
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat}
    {cont : Prop} (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (he0 : e ∈ Γ0) (het : e.ty = T.ev)
    {sg : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hany : ∀ pt ∈ sg.params, pt = .any) (hgw : ∀ g ∈ C.PG, g ∉ sg.gw)
    {u st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (h : OpInv C H Γ0 s0 p0 PWs e GLb cont u)
    (hR : SumRel C H sg Pre PW' Q vs (callEntryStateHOLFinite u callee) r st)
    (hgood : Good (some r)) (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be)
    (hlen : sg.params.length = vs.length)
    (hpre : ∀ Γ, Trk C H Γ0 s0 p0 PWs Γ u → Pre vs (callEntryStateHOLFinite u callee) Γ)
    (hPW : ∀ Γ a, ProtCell C Γ a → PW' vs (callEntryStateHOLFinite u callee) Γ a → PWs a)
    (hPW3 : ∀ Γ a, PW' vs (callEntryStateHOLFinite u callee) Γ a →
      a ≠ e.cell 3 ∧ a ≠ e.cell 5 ∧ a ≠ e.cell 8)
    (hQg : ∀ Γ Γ', Q vs (callEntryStateHOLFinite u callee) Γ r st Γ' → st.globals = u.globals) :
    OpInv C H Γ0 s0 p0 PWs e GLb cont st ∧
      ∃ Γ Γ', Trk C H Γ0 s0 p0 PWs Γ' st ∧ Q vs (callEntryStateHOLFinite u callee) Γ r st Γ' := by
  obtain ⟨Γ, ht, hev, hgl, hmem, hc⟩ := id h
  obtain ⟨e', he', hb', ht'⟩ := trk_ev ht he0 het
  obtain ⟨q, hq, hord, hL⟩ := trk_ptrs ht
  obtain ⟨Γ', pp, pp', ht2, hcore, hQ⟩ := trk_callSum (t' := callEntryStateHOLFinite u callee) hH ht
    hord0 hL0 rfl rfl rfl rfl hR hgood (fun p _ => argsOK_any hany hlen) (hpre Γ ht) hgw
    (fun a ha => absurd ha (argCells_any hany)) (hPW Γ) hd hbe
  have hGu : G C H Γ (callEntryStateHOLFinite u callee) :=
    G_congr (s := u) hH rfl rfl rfl rfl (trk_G ht)
  refine ⟨opInv_of h ht2 (hQg Γ Γ' hQ) fun k hk => ?_, Γ, Γ', ht2, hQ⟩
  rw [← cells_base hb', rd, sumCore_prot hGu hcore (fun a ha => absurd ha (argCells_any hany))
    (ev358_prot hE hGLp hL he' ht' hk) (fun hpw => ?_), ← rd]
  · rfl
  · have := hPW3 Γ _ hpw
    rw [cells_base hb'] at this
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl
    · exact this.1 rfl
    · exact this.2.1 rfl
    · exact this.2.2 rfl

/-- `OpInv` when only the EV pointer and `frame_mem_ptr` among the globals are known kept. -/
theorem opInv_of' {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj}
    {GLb : Nat} {cont : Prop} {u st : State σ} {Γ' : Gam}
    (h : OpInv C H Γ0 s0 p0 PWs e GLb cont u) (ht : Trk C H Γ0 s0 p0 PWs Γ' st)
    (hgev : st.globals.lookup gEv = u.globals.lookup gEv)
    (hfp : st.globals.lookup gFrame = u.globals.lookup gFrame)
    (hk : ∀ k ∈ [3, 5, 8], rd st.memory (e.cell k) = rd u.memory (e.cell k)) :
    OpInv C H Γ0 s0 p0 PWs e GLb cont st := by
  obtain ⟨Γ, htu, hev, hgl, hmem, hc⟩ := h
  obtain ⟨q, hq, -, -⟩ := trk_ptrs htu
  refine ⟨Γ', ht, by rw [hgev]; exact hev, by rw [hk 8 (by simp)]; exact hgl,
    by unfold fMEM; rw [hk 3 (by simp)]; exact hmem, fun hct p hp => ?_⟩
  unfold fMEM fMCAP; rw [hk 3 (by simp), hk 5 (by simp), ← fp_eq hp hq hfp]
  exact hc hct q hq

/-- `opInv_callSum` for a callee that may move allocator pointers other than `frame_mem_ptr`. -/
theorem opInv_callSum' (hH : HooksLawful C H) (hE : EvCfg C T) (hGLp : (C.ty T.ev).slot 8 = .prot)
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat}
    {cont : Prop} (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (he0 : e ∈ Γ0) (het : e.ty = T.ev)
    {sg : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hany : ∀ pt ∈ sg.params, pt = .any) (hgw : ∀ g ∈ C.PG, g ∉ sg.gw)
    {u st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (h : OpInv C H Γ0 s0 p0 PWs e GLb cont u)
    (hR : SumRel C H sg Pre PW' Q vs (callEntryStateHOLFinite u callee) r st)
    (hgood : Good (some r)) (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be)
    (hlen : sg.params.length = vs.length)
    (hpre : ∀ Γ, Trk C H Γ0 s0 p0 PWs Γ u → Pre vs (callEntryStateHOLFinite u callee) Γ)
    (hPW : ∀ Γ a, ProtCell C Γ a → PW' vs (callEntryStateHOLFinite u callee) Γ a → PWs a)
    (hPW3 : ∀ Γ a, PW' vs (callEntryStateHOLFinite u callee) Γ a →
      a ≠ e.cell 3 ∧ a ≠ e.cell 5 ∧ a ≠ e.cell 8)
    (hfp : st.globals.lookup gFrame = u.globals.lookup gFrame) :
    OpInv C H Γ0 s0 p0 PWs e GLb cont st ∧
      ∃ Γ Γ', Trk C H Γ0 s0 p0 PWs Γ' st ∧ Q vs (callEntryStateHOLFinite u callee) Γ r st Γ' := by
  obtain ⟨Γ, ht, hev, hgl, hmem, hc⟩ := id h
  obtain ⟨e', he', hb', ht'⟩ := trk_ev ht he0 het
  obtain ⟨q, hq, hord, hL⟩ := trk_ptrs ht
  obtain ⟨Γ', pp, pp', ht2, hcore, hQ⟩ := trk_callSum (t' := callEntryStateHOLFinite u callee) hH ht
    hord0 hL0 rfl rfl rfl rfl hR hgood (fun p _ => argsOK_any hany hlen) (hpre Γ ht) hgw
    (fun a ha => absurd ha (argCells_any hany)) (hPW Γ) hd hbe
  have hGu : G C H Γ (callEntryStateHOLFinite u callee) :=
    G_congr (s := u) hH rfl rfl rfl rfl (trk_G ht)
  have hgev : st.globals.lookup gEv = u.globals.lookup gEv := by
    obtain ⟨-, -, -, -, -, -, -, h1, -⟩ := ht2
    obtain ⟨-, -, -, -, -, -, -, h2, -⟩ := ht
    rw [h1 _ hE.ev_pg, h2 _ hE.ev_pg]
  refine ⟨opInv_of' h ht2 hgev hfp fun k hk => ?_, Γ, Γ', ht2, hQ⟩
  rw [← cells_base hb', rd, sumCore_prot hGu hcore (fun a ha => absurd ha (argCells_any hany))
    (ev358_prot hE hGLp hL he' ht' hk) (fun hpw => ?_), ← rd]
  · rfl
  · have := hPW3 Γ _ hpw
    rw [cells_base hb'] at this
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl
    · exact this.1 rfl
    · exact this.2.1 rfl
    · exact this.2.2 rfl

/-! ## The `charge_with_memory` step -/

theorem prot_slot_of {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) (h : ProtCell C Γ (o.cell k)) :
    (C.ty o.ty).slot k = .prot := by
  obtain ⟨o', ho', k', hk', hp, he⟩ := h
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
  exact hp

theorem opInv_cwm (hH : HooksLawful C H) (hE : EvCfg C T) (hGLp : (C.ty T.ev).slot 8 = .prot)
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat}
    (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (he0 : EvObj T Γ0 s0 e)
    {u st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (h : OpInv C H Γ0 s0 p0 PWs e GLb True u)
    (hR : SumRel C H sgCWM (CWMPre T) (PWev T [4, 5, 8, 23]) (CWMQ T) vs
      (callEntryStateHOLFinite u callee) r st)
    (hgood : Good (some r)) (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be)
    {base a0 a1 a2 a3 b0 b1 b2 b3 : BitVec 64}
    (hvs : vs = [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]])
    (hGLne : rd s0.memory (e.cell 8) ≠ wMax)
    (hPW : ∀ a, ProtCell C Γ0 a → (∃ k ∈ [4, 5, 8, 23], a = e.cell k) → PWs a) :
    OpInv C H Γ0 s0 p0 PWs e GLb False st ∧
      ((∃ v, r = .returned v) → OpInv C H Γ0 s0 p0 PWs e (GLb + base.toNat) True st ∧
        (isZeroF b0 b1 b2 b3 = 0 → (satWordF a0 a1 a2 a3).toNat + (satWordF b0 b1 b2 b3).toNat ≤
          (fLEN st.memory e).toNat)) := by
  subst hvs
  obtain ⟨Γ, ht, hev, hgl, hmem, hc⟩ := id h
  obtain ⟨e', he', hb', ht'⟩ := trk_ev ht he0.1 he0.2.1
  obtain ⟨q, hq, hord, hL⟩ := trk_ptrs ht
  have hEe : ∀ e'', EvObj T Γ (callEntryStateHOLFinite u callee) e'' → e'' = e' := fun e'' h'' =>
    evObj_unique hL h'' ⟨he', ht', by rw [hb']; exact hev⟩
  have hpre : CWMPre T [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]]
      (callEntryStateHOLFinite u callee) Γ := by
    intro e'' h''
    rw [hEe e'' h'']
    refine ⟨fun hmx => hGLne ?_, fun p hp => ?_⟩
    · have : (rd u.memory (e.cell 8)).toNat = 2 ^ 64 - 1 := by
        rw [← cells_base hb']; exact congrArg BitVec.toNat hmx
      have := (rd s0.memory (e.cell 8)).isLt
      exact BitVec.eq_of_toNat_eq (by rw [wMax_toNat]; omega)
    · unfold fMEM fMCAP; rw [cells_base hb', cells_base hb']
      exact hc trivial p hp
  obtain ⟨Γ', pp, pp', ht2, hcore, hQ⟩ := trk_callSum (t' := callEntryStateHOLFinite u callee) hH ht
    hord0 hL0 rfl rfl rfl rfl hR hgood (fun p _ => argsOK_any (by simp [sgCWM]) rfl) hpre
    (fun _ _ => by simp [sgCWM]) (fun a ha => absurd ha (argCells_any (by simp [sgCWM])))
    (fun a hpa ⟨e3, he3, k, hk, hak⟩ => by
      rw [hEe e3 he3] at hak
      subst hak
      have hks : e'.HasSlot k := ev_hasSlot hE hL he' ht' (by simp at hk; omega)
      have hsl := prot_slot_of hord hL he' hks hpa
      rw [cells_base hb']
      refine hPW _ ⟨e, he0.1, k, ev_hasSlot hE hL0 he0.1 he0.2.1 (by simp at hk; omega),
        by rw [he0.2.1, ← ht']; exact hsl, rfl⟩ ⟨k, hk, rfl⟩)
    hd hbe
  obtain ⟨hmemQ, hleQ, hretQ⟩ := hQ e' ⟨he', ht', by rw [hb']; exact hev⟩ base a0 a1 a2 a3 b0 b1 b2 b3
    rfl
  have hev2 : st.globals.lookup gEv = some (.val (.word e.base)) := by
    rw [hcore.2.2.2.2.2.2.2.1 gEv hE.ev_pg (by simp [sgCWM])]; exact hev
  have hm2 : fMEM st.memory e = fMEM s0.memory e := by
    unfold fMEM at hmemQ ⊢; rw [← cells_base hb']; rw [hmemQ, cells_base hb']; exact hmem
  rw [cells_base hb'] at hleQ
  have hcu : (rd (callEntryStateHOLFinite u callee).memory (e.cell 8)).toNat =
      (rd u.memory (e.cell 8)).toNat := rfl
  have hle2 : (rd st.memory (e.cell 8)).toNat + GLb ≤ (rd s0.memory (e.cell 8)).toNat := by
    omega
  refine ⟨⟨Γ', ht2, hev2, hle2, hm2, fun h => h.elim⟩, fun hr => ?_⟩
  obtain ⟨hcov, hcont, hgas⟩ := hretQ hr
  refine ⟨⟨Γ', ht2, hev2, ?_, hm2, fun _ p hp => ?_⟩, fun hz => ?_⟩
  · rw [cells_base hb'] at hgas
    omega
  · have := hcont p hp
    unfold fMEM fMCAP at this ⊢; rw [← cells_base hb', ← cells_base hb']; exact this
  · have := hcov hz
    unfold fLEN at this ⊢; rw [← cells_base hb']; exact this

end InitECandidate.Solver.MemSafe.Struct

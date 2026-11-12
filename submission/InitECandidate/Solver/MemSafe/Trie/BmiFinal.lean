import InitECandidate.Solver.MemSafe.Trie.BmiTop
import InitECandidate.Solver.MemSafe.Trie.Closed
import InitECandidate.Solver.MemSafe.Frames.Release
import InitECandidate.Solver.MemSafe.Annot.DrvCfg
import InitECandidate.Solver.MemSafe.Trie.Lift

/-!
# `build_mpt_indexed`: the summary at the caller's typing

**`sumSpecA_build_mpt_indexed`**: signature `[any, any, buf 32] -> []`, no extra writable cells (`PW = False`), and the
typing unchanged (`Γ' = Γ`). `BmiPre`: the `n` slices `(ptr, len)` at `arr` are in cells allocated at entry and outside every
object of a surviving type (`kept Γ`), and every slice is a `tVAL` slice of `Γ`.

The run is lifted from a ghost run (`Trie/Forget.lean`, `Trie/Ghost.lean`): from `zeroSt s` at `kept Γ` (no trie nodes, no
block state) the body ends with the allocator monotone and only footprint cells changed (`bmi_ghost`); the real run has the
same result, memory and allocator, and differs only on forgotten globals. `G` at `Γ` follows by `G_buf` (the changed cells
are scalar cells, the `out` buffer, or unallocated at entry) and `G_reptrT` (every typed and protected global is unchanged:
`funSpec_trie_gw`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- `G_reptr` with only the typed and protected globals kept. -/
theorem G_reptrT {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAG : Helpers.AllocGlobs C)
    {Γ : Gam} {s t : State σ} (hG : G C H Γ s) {p' : Ptrs} (hp' : ptrsOf t = some p')
    (hord' : p'.Ordered) (hlive : ∀ o ∈ Γ, (C.ty o.ty).region.Live p' o.lo o.size)
    (hm : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgo : ∀ g, ((C.GT.lookup g).isSome ∨ g ∈ C.PG) → t.globals.lookup g = s.globals.lookup g) :
    G C H Γ t := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p', hp', hord', ⟨fun o ho => ?_, hL.2⟩, by rw [hm]; exact hF, by rw [hm]; exact hT, ?_, ?_⟩
  · obtain ⟨a1, a2, a3, a4, -⟩ := hL.1 o ho
    exact ⟨a1, a2, a3, a4, hlive o ho⟩
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgo g (Or.inl (by rw [hk]; rfl))]
    exact hv
  · intro o ho
    exact (hH.2 Γ s t o (hW o ho) hd hbe (fun a _ => by rw [hm]) (fun g hg => hgo g (Or.inr hg))).1

theorem obj_unique {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ)
    {a : Nat} (h1 : o.lo ≤ a) (h2 : a < o.hi) (h1' : o'.lo ≤ a) (h2' : a < o'.hi) : o = o' := by
  by_contra hne
  rcases layout_disj hL ho ho' hne with h | h <;> omega

theorem alloc_of_obj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) {a : Nat}
    (h1 : o.lo ≤ a) (h2 : a < o.hi) : p.Allocated a := by
  have hlive := (hL.1 o ho).2.2.2.2
  unfold Obj.hi Obj.lo at *
  unfold Ptrs.Allocated
  cases hr : (C.ty o.ty).region <;> rw [hr] at hlive <;> simp only [Region.Live] at hlive <;> omega

theorem notInKept {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ)
    (hk : keepTy o.ty = false) {a : Nat} (h1 : o.lo ≤ a) (h2 : a < o.hi) : ¬ InObj (kept Γ) a := by
  rintro ⟨o', ho', h1', h2'⟩
  obtain ⟨ho'', hk'⟩ := mem_kept.mp ho'
  rw [obj_unique hL ho ho'' h1 h2 h1' h2', hk'] at hk
  cases hk

theorem bufOK_kept {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout Types.guestC p Γ) {b n : Nat}
    (h : BufOK Types.guestC Γ p b n) : BufOK Types.guestC (kept Γ) p b n := by
  intro x hx
  rcases h x hx with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hn, hal⟩
  · obtain ⟨hcc, -⟩ := cell_toNat hord hL ho hk
    have hk8 := hk
    unfold Obj.HasSlot at hk8
    have h1 : o.lo ≤ (o.cell k).toNat := by omega
    have h2 : (o.cell k).toNat < o.hi := by unfold Obj.hi Obj.lo at *; omega
    cases hkt : keepTy o.ty
    · exact Or.inr ⟨notInKept hL ho hkt h1 h2, alloc_of_obj hL ho h1 h2⟩
    · exact Or.inl ⟨o, mem_kept.mpr ⟨ho, hkt⟩, k, hk, hsc, rfl⟩
  · exact Or.inr ⟨fun ⟨o', ho', h1, h2⟩ => hn ⟨o', (mem_kept.mp ho').1, h1, h2⟩, hal⟩

theorem vInR_kept {Γ : Gam} {vp vl : BitVec 64} (h : VInR tVAL Γ vp vl) : VInR tVAL (kept Γ) vp vl := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · exact Or.inl h
  · exact Or.inr ⟨x, mem_kept.mpr ⟨hx, by rw [ht]; decide⟩, ht, h1, h2⟩

theorem capPW_kept {s : State σ} {Γ : Gam} {x : BitVec 64} (h : CapPW insCaps s (kept Γ) x) : False := by
  obtain ⟨c, hc, h⟩ := h
  simp only [insCaps, leafCaps, brCaps, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
    or_false] at hc
  rcases h with ⟨e, ⟨he, ht, -⟩, -⟩ | ⟨hall, -⟩
  · have hk := (mem_kept.mp he).2
    rcases hc with rfl | rfl <;> rw [ht] at hk <;> exact absurd hk (by decide)
  · rcases hc with rfl | rfl <;> cases hall

theorem wcell_kept {C : Cfg} {Γ : Gam} {x : BitVec 64} (h : WCell C (kept Γ) x) : WCell C Γ x := by
  obtain ⟨o, ho, k, hk, hs, he⟩ := h
  exact ⟨o, (mem_kept.mp ho).1, k, hk, hs, he⟩

theorem grRel_ptrs {s t : State σ} (h : GrRel forgotten s t) : ptrsOf t = ptrsOf s := by
  obtain ⟨gl, rfl, hg⟩ := h
  have h1 : gHeap ∉ forgotten := by decide
  have h2 : gFrame ∉ forgotten := by decide
  have h3 : gScratch ∉ forgotten := by decide
  unfold ptrsOf gword
  simp only [hg _ h1, hg _ h2, hg _ h3]

/-- `build_mpt_indexed`'s precondition at the caller's typing. -/
def BmiPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ A N OUT : BitVec 64, vs = [.val (.word A), .val (.word N), .val (.word OUT)] ∧
    ∃ p, ptrsOf s = some p ∧ ∀ j : BitVec 64, j.toNat < N.toNat →
      (p.Allocated (A + j * 16#64).toNat ∧ ¬ InObj (kept Γ) (A + j * 16#64).toNat) ∧
      (p.Allocated (A + (j * 16#64 + 8#64)).toNat ∧ ¬ InObj (kept Γ) (A + (j * 16#64 + 8#64)).toNat) ∧
      VInR tVAL Γ (rd s.memory (A + j * 16#64)) (rd s.memory (A + (j * 16#64 + 8#64)))

theorem grFree_bmi : grFreeB forgotten (trieFns.map Prod.fst) bmiBody = true := by
  conv => lhs; cbv

theorem trie_has_bmi : (trieFns.map Prod.fst).contains (nm "build_mpt_indexed") = true := by
  conv => lhs; cbv

theorem pg_typed : ∀ g ∈ Types.guestC.PG, g ∈ typedGlobals := by
  intro g hg
  have : Types.guestC.PG.all (fun g => typedGlobals.contains g) = true := by conv => lhs; cbv
  have := List.all_eq_true.mp this g hg
  simpa using this

theorem typed_of_some {g : MlS} (h : (Types.guestC.GT.lookup g).isSome) : g ∈ typedGlobals := by
  unfold typedGlobals
  cases hl : Types.guestC.GT.lookup g with
  | none => rw [hl] at h; cases h
  | some k =>
      have := lookup_mem_pair hl
      exact List.mem_map.mpr ⟨(g, k), this, rfl⟩

theorem argCells_bmi {A N OUT x : BitVec 64}
    (h : ArgCells bmiSig.params [.val (.word A), .val (.word N), .val (.word OUT)] x) : Overlap OUT.toNat 32 x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨n, hn, ho⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | _ | _ | i
    · simp [bmiSig] at hn
    · simp [bmiSig] at hn
    · simp [bmiSig] at hn
      subst hn
      simp [argW, wordOf] at hw
      subst hw
      exact ho
    · simp [bmiSig] at hn
  · rcases i with _ | _ | _ | i <;> simp [bmiSig] at hj

set_option maxHeartbeats 0 in
/-- **`build_mpt_indexed`'s summary.** -/
theorem sumSpecA_build_mpt_indexed :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "build_mpt_indexed") bmiSig BmiPre
      (fun _ _ _ _ => False) (fun _ _ Γ _ _ Γ' => Γ' = Γ) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  have hdom := Helpers.funSpec_dom (σ := σ) (X := guestCtx) (nm "build_mpt_indexed") vs body callee rs hl s hs hloc r hr
  have hgw : ∀ g ∈ typedGlobals, (evaluateHOLFiniteState s body).2.globals.lookup g = s.globals.lookup g :=
    fun g hg => funSpec_trie_gw hX hg trie_has_bmi vs body callee rs hl s hs hloc r hr
  have hl' := hl
  rw [hX] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_bmi hl'
  obtain ⟨A, N, OUT, rfl, p, hp, harr⟩ := hpre
  obtain ⟨p1, hp1, hA⟩ := hargs
  rw [hp] at hp1
  cases hp1
  obtain ⟨hord, hLy⟩ : p.Ordered ∧ Layout Types.guestC p Γ := by
    obtain ⟨p', hp', ho, hL, -⟩ := hG
    rw [hp] at hp'
    cases hp'
    exact ⟨ho, hL⟩
  have hkv : LV (kvA A N OUT) s.locals := by
    intro q hq
    simp only [kvA, List.mem_cons, List.not_mem_nil, or_false] at hq
    rw [hloc]
    rcases hq with rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
  have hbufOUT : BufOK Types.guestC Γ p OUT.toNat 32 := by
    obtain ⟨-, hv⟩ := hA
    obtain ⟨w, hw, hb⟩ := hv 2 (.buf 32) (.val (.word OUT)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hb
  -- the ghost activation
  have hG0 : G Types.guestC (Hooks.guestHooksR (σ := σ)) (kept Γ) (zeroSt s) := ghost_G hG
  have hp0 : ptrsOf (zeroSt s) = some p := (ptrsOf_zero s).trans hp
  have hargsK : ArgsOK Types.guestC (kept Γ) p bmiSig.params [.val (.word A), .val (.word N), .val (.word OUT)] := by
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i <;> simp [bmiSig] at hpt hv
    · subst hpt; trivial
    · subst hpt; trivial
    · subst hpt; subst hv; exact ⟨OUT, rfl, bufOK_kept hord hLy hbufOUT⟩
  have hreq : ReqOK insCaps (zeroSt s) (kept Γ) := by
    intro c hc hne
    simp only [insCaps, leafCaps, brCaps, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
      or_false] at hc
    rcases hc with rfl | rfl <;> exact absurd rfl hne
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_ins bmiSig) hG0 hp0 hargsK hreq
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) bmiSig insCaps
    [.val (.word A), .val (.word N), .val (.word OUT)] (zeroSt s) (kept Γ) p with hadef
  have hOutB : ∀ (s' : State σ) (Γ' : Gam) (q : Ptrs), Heap a Γ' q s' → BufOK a.Cb Γ' q OUT.toNat 32 :=
    fun s' Γ' q hh' => bufOK_ext ha.hord0 (heap_ord hh') hh'.2.2.1 hh'.2.2.2.1 hh'.2.2.2.2.1
      (bufOK_kept hord hLy hbufOUT)
  have hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x := fun x hx =>
    Or.inr (Or.inl ⟨2, OUT, by simp [a, actOf, argW, wordOf], Or.inl ⟨32, rfl, hx⟩⟩)
  have hArr0 : ArrE a.p0 a.s0.memory A N (kept Γ) (zeroSt s).memory := by
    intro j hj
    obtain ⟨⟨a1, n1⟩, ⟨a2, n2⟩, hv⟩ := harr j hj
    exact ⟨⟨a1, n1, rfl⟩, ⟨a2, n2, rfl⟩, vInR_kept hv⟩
  -- the ghost run and the real run
  have hgr0 := gr_preserved grClosed_trie bmiBody s (zeroSt s) grFree_bmi (by rw [hs.1]; exact hX) (grRel_zero s)
  have HG := bmi_ghost ha rfl rfl rfl rfl (show capSub insCaps insCaps = true by decide) (A := A) (N := N) hOutB hOutF (zeroSt s) hs
    ⟨hkv, kept Γ, p, ext_refl _, hh, scrOld_refl _, hArr0, rfl⟩ (by rw [hgr0.1, hr]; exact hgood)
  rw [hgr0.1, hr] at HG
  obtain ⟨q', hq', hord', hmono, hmod⟩ := HG r rfl hna
  have hmem : (evaluateHOLFiniteState (zeroSt s) bmiBody).2.memory = (evaluateHOLFiniteState s bmiBody).2.memory := by
    obtain ⟨gl, he, -⟩ := hgr0.2
    rw [he]
  have hpt : ptrsOf (evaluateHOLFiniteState s bmiBody).2 = some q' := (grRel_ptrs hgr0.2).symm.trans hq'
  have hmodR : ModifiesOnly (fun x => WCell Types.guestC (kept Γ) x ∨
      ArgCells bmiSig.params [.val (.word A), .val (.word N), .val (.word OUT)] x ∨ ¬ p.Allocated x.toNat)
      s.memory (evaluateHOLFiniteState s bmiBody).2.memory := by
    intro x hx
    rw [← hmem]
    refine hmod x fun hf => hx ?_
    rcases hf with h | h | h | ⟨-, h⟩
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr h)
    · exact (capPW_kept h).elim
  have hRbuf : ∀ x, (WCell Types.guestC (kept Γ) x ∨
      ArgCells bmiSig.params [.val (.word A), .val (.word N), .val (.word OUT)] x ∨ ¬ p.Allocated x.toNat) →
      BufCell Types.guestC Γ x := by
    intro x hx
    rcases hx with ⟨o, ho, k, hk, hs', rfl⟩ | h | h
    · obtain ⟨ho', hkt⟩ := mem_kept.mp ho
      rcases keepTy_slot hkt k with e | e
      · exact Or.inl ⟨o, ho', k, hk, e, rfl⟩
      · exact absurd e hs'
    · rcases hbufOUT x (argCells_bmi h) with h' | ⟨hn, -⟩
      · exact Or.inl h'
      · exact Or.inr hn
    · exact Or.inr (notInObj_of_unalloc hord hLy h)
  have hGu : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ
      { s with memory := (evaluateHOLFiniteState s bmiBody).2.memory } :=
    G_buf hF.hH tagSlots_guestC hG rfl rfl rfl hmodR hRbuf
  have hGt : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (evaluateHOLFiniteState s bmiBody).2 := by
    refine G_reptrT hF.hH Annot.drv_allocG hGu hpt hord'
      (fun o ho => live_mono hmono (hLy.1 o ho).2.2.2.2) rfl hdom.1 hdom.2 fun g hg => ?_
    rcases hg with hg | hg
    · exact hgw g (typed_of_some hg)
    · exact hgw g (pg_typed g hg)
  refine ⟨Γ, p, q', ⟨hp, hpt, hmono, ext_refl _, newFresh_same, hGt, ?_, fun g hg _ => hgw g (pg_typed g hg),
    fun h => by simp [bmiSig] at h, fun v _ i r' w h => by simp [bmiSig] at h⟩, rfl⟩
  intro x hx
  exact hmodR x fun h => hx (by
    rcases h with h | h | h
    · exact Or.inl (wcell_kept h)
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h)))

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_build_mpt_indexed

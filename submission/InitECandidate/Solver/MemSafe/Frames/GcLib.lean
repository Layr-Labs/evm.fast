import InitECandidate.Solver.MemSafe.Frames.SCGuestT

/-!
# `generic_call`: chain steps and the fresh release invariant

* `chainL_keepR`: `chainL_keep` where the running frame's `set_retdata` buffer is re-established
  (`RetOK` of the top given) instead of kept.
* **`pa_coreX`**: a callee writing `prot` slots `ks` of the running EV only (`PWtop ks`), with
  `ks` avoiding the slots `3, 5, 13` (memory, memory capacity, running) and the `RETDATA` slots
  either kept or re-established, keeps the chain; `Φ` does not rise when the gas cells do not.
  Generalizes `pa_core` (`ks ⊆ gasKs`).
* `above_live`: every object of a laid-out `Γ` survives a release to the current allocator
  pointers.
* **`markOK_fresh`**: after the marks `mk = sp₀`, `mm = fp₀` are taken and one new scratch object
  of a non-`adjTys`, non-EV type is allocated below `sp₀` (`child_message`), the release
  invariant `MarkOK mk mm` holds (frames5 finding 2: it cannot be carried from before the marks).
* `frameAbove_fresh`: the records of the existing frames survive that release.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `chainL_keep` with the running frame's `RetOK` re-established. -/
theorem chainL_keepR {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {s t : State σ} {e c : BitVec 64}
    {rest : List Frame} (h : ChainL C tEV tCK Γ s ((e, c) :: rest))
    (hev : gword t nmEv = gword s nmEv) (hcc : gword t nmCC = gword s nmCC)
    (hck : ∀ f ∈ (e, c) :: rest, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k)
    (hpa : ∀ f ∈ ((e, c) :: rest).tail, ∀ k ∈ evParentSlots, fld t.memory f.1 k = fld s.memory f.1 k)
    (htop : ∀ k ∈ [evMem, evMemCap], fld t.memory e k = fld s.memory e k)
    (hfp : ∀ p', ptrsOf t = some p' → ∃ p, ptrsOf s = some p ∧ p'.fp = p.fp)
    (hrd : ∀ f ∈ rest, ∀ k ∈ [evRetd, evRetdCap], fld t.memory f.1 k = fld s.memory f.1 k)
    (hrdT : RetOK C Γ' t.memory e) (hst : GStep C tEV Γ Γ' s t e) :
    ChainL C tEV tCK Γ' t ((e, c) :: rest) := by
  have hext := gStep_ext hst
  have hhead : ∀ f ∈ ((e, c) :: rest : List Frame).head?, f.1 = e := by
    intro f hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf; rw [← hf]
  obtain ⟨⟨e1, c1, rest1, hfs, he, hc, hch⟩, hobj, hnE, hnC, hst', hmm, hout, htm, hmk, hrd0⟩ := h
  refine ⟨⟨e1, c1, rest1, hfs, by rw [hev]; exact he, by rw [hcc]; exact hc,
    isChain_keep hch hck⟩, ?_, hnE, hnC, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro f hf
    obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := hobj f hf
    obtain ⟨o1', ho1', hb1', ht1', -⟩ := hext o1 ho1
    obtain ⟨o2', ho2', hb2', ht2', -⟩ := hext o2 ho2
    exact ⟨⟨o1', ho1', hb1'.trans hb1, ht1'.trans ht1⟩, ⟨o2', ho2', hb2'.trans hb2, ht2'.trans ht2⟩⟩
  · intro ch pa ha
    obtain ⟨-, hpa'⟩ := adj_mem ha
    rw [hpa pa hpa' evSp (by simp [evParentSlots]), hpa pa hpa' evStackCap (by simp [evParentSlots])]
    exact hst' ch pa ha
  · intro ch pa ha
    obtain ⟨hch', hpa'⟩ := adj_mem ha
    rw [hck ch hch' ckMemMark (by simp [ckChainSlots]),
      hpa pa hpa' evMem (by simp [evParentSlots]), hpa pa hpa' evMemCap (by simp [evParentSlots])]
    exact hmm ch pa ha
  · intro ch pa ha
    obtain ⟨hch', hpa'⟩ := adj_mem ha
    rw [hck ch hch' ckOutSize (by simp [ckChainSlots]),
      hck ch hch' ckOutStart (by simp [ckChainSlots]),
      hpa pa hpa' evMemLen (by simp [evParentSlots])]
    exact hout ch pa ha
  · intro e' c' rest' hfs' p' hp'
    obtain ⟨p, hp, hfp'⟩ := hfp p' hp'
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
    rw [htop evMem (by simp), htop evMemCap (by simp), hfp']
    exact htm e c rest rfl p hp
  · intro l1 ch pa l2 hfs'
    exact childMarks_keep hobj hck hhead hst hfs' (hmk l1 ch pa l2 hfs')
  · intro f hf
    rcases List.mem_cons.mp hf with rfl | hf'
    · exact hrdT
    · exact retOK_ext hext (hrd f hf' evRetd (by simp)) (hrd f hf' evRetdCap (by simp)) (hrd0 f hf)

/-- **A callee writing `prot` slots `ks` of the running EV only keeps the chain.** -/
theorem pa_coreX {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {Γa Γ' : Gam} {s st : State σ} {e c : BitVec 64} {rest : List Frame}
    (hG : G C H Γa s) (hch : ChainL C tEV tCK Γa s ((e, c) :: rest)) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 5, 13], j ∉ ks)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {pu pt : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γa a ∧ PWtop tEV tCK ks vs s Γa a) Γa s vs r st Γ'
      pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γa a) (hfp : pt.fp = pu.fp)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat)
    (hrdT : (18 ∉ ks ∧ 27 ∉ ks) ∨ RetOK C Γ' st.memory e) :
    ChainL C tEV tCK Γ' st ((e, c) :: rest) ∧ Phi st ≤ Phi s ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld s.memory c (8 * j)) ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld s.memory e (8 * j)) := by
  have hpk := sumCore_prot hc hG hac
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -, hpg, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : pu = q := Option.some.inj (hpu.symm.trans hq)
  have hG'c := hG'
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  obtain rfl : pt = q' := Option.some.inj (hpt.symm.trans hq')
  have hesz : ∀ x ∈ Γa, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  obtain ⟨e1, c1, rest1, hfs1, hev, hcc, hic⟩ := hch.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
  have hEV : ∀ o ∈ Γa, o.ty = tEV → ∀ j ∈ evProtSlots, (o.base = e → j ∉ ks) →
      fld st.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
    intro o ho hot j hj hnr
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    refine frame_keep hord hL hesz hpk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.evProt j hj) fun heb => hnr ?_
    rw [hev] at heb; exact (Option.some.inj heb).symm
  have hCK : ∀ o ∈ Γa, o.ty = tCK → ∀ j, j < 13 →
      fld st.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
    intro o ho hot j hj
    have hsz := ck_size hF hL ho hot
    refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
    exfalso
    rw [hev] at heb
    obtain ⟨o', ho', hob', hot'⟩ := (hch.objs (e, c) (by simp)).1
    exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
      ((Option.some.inj heb).symm.trans hob'.symm)
  have hnd := hch.nodupE
  simp only [List.map_cons, List.nodup_cons] at hnd
  have hne : ∀ f ∈ rest, f.1 ≠ e := fun f hf h => hnd.1 (h ▸ List.mem_map_of_mem hf)
  have hfE : ∀ f ∈ (e, c) :: rest, ∀ j ∈ evProtSlots, (f.1 = e → j ∉ ks) →
      fld st.memory f.1 (8 * j) = fld s.memory f.1 (8 * j) := by
    intro f hf j hj hnr
    obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).1
    rw [← hob]; exact hEV o ho hot j hj fun hb => hnr (hob.symm.trans hb)
  have hfC : ∀ f ∈ (e, c) :: rest, ∀ j, j < 13 →
      fld st.memory f.2 (8 * j) = fld s.memory f.2 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).2
    rw [← hob]; exact hCK o ho hot j hj
  have hst : GStep C tEV Γa Γ' s st e := ⟨pu, pt, hpu, hpt, hord, hord', hL, hL', hmo, hext, hnf,
    fun x hx hxt hxe => ⟨hEV x hx hxt 1 (by simp [evProtSlots]) fun h => absurd h hxe,
      hEV x hx hxt 3 (by simp [evProtSlots]) fun h => absurd h hxe⟩⟩
  have hrdT' : RetOK C Γ' st.memory e := by
    rcases hrdT with ⟨h18, h27⟩ | h
    · have hr := hch.retd (e, c) (by simp)
      exact retOK_ext hext (hfE (e, c) (by simp) 18 (by simp [evProtSlots]) fun _ => h18)
        (hfE (e, c) (by simp) 27 (by simp [evProtSlots]) fun _ => h27) hr
    · exact h
  have hch' : ChainL C tEV tCK Γ' st ((e, c) :: rest) := by
    refine chainL_keepR hch (by unfold gword; rw [hpg _ hF.pgEv hgw.1])
      (by unfold gword; rw [hpg _ hF.pgCC hgw.2]) ?_ ?_ ?_ ?_ ?_ hrdT' hst
    · intro f hf k hk
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact hfC f hf 0 (by omega)
      · exact hfC f hf 1 (by omega)
      · exact hfC f hf 2 (by omega)
      · exact hfC f hf 6 (by omega)
      · exact hfC f hf 7 (by omega)
      · exact hfC f hf 9 (by omega)
      · exact hfC f hf 10 (by omega)
    · intro f hf k hk
      have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      have hnr : f.1 = e → False := hne f hf
      simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen, List.mem_cons,
        List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl
      · exact hfE f hf' 2 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 29 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 3 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 5 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 4 (by simp [evProtSlots]) fun h => absurd h hnr
    · intro k hk
      simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hfE (e, c) (by simp) 3 (by simp [evProtSlots]) fun _ => hnot 3 (by simp)
      · exact hfE (e, c) (by simp) 5 (by simp [evProtSlots]) fun _ => hnot 5 (by simp)
    · intro p' hp'
      obtain rfl := ptrs_some hpt hp'
      exact ⟨pu, hpu, hfp⟩
    · intro f hf k hk
      have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hfE f hf' 18 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 27 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
  refine ⟨hch', ?_, fun j hj => hfC (e, c) (by simp) j hj,
    fun j hj hnk => hfE (e, c) (by simp) j hj fun _ => hnk⟩
  rw [phi_eq hch'.chain, phi_eq hch.chain, wsum_cons, wsum_cons]
  have hrest : wsum st.memory rest = wsum s.memory rest := by
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl
      · exact hfE f hf' 8 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 24 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 13 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
    · exact hfC f (List.mem_cons_of_mem _ hf) 4 (by omega)
  have hgas' : (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat := by
    rcases hgas with ⟨h8, h24⟩ | h
    · have e8 := hfE (e, c) (by simp) 8 (by simp [evProtSlots]) fun _ => h8
      have e24 := hfE (e, c) (by simp) 24 (by simp [evProtSlots]) fun _ => h24
      simp only [show (8 * 8 : Nat) = 64 from rfl, show (8 * 24 : Nat) = 192 from rfl] at e8 e24
      rw [e8, e24]
    · exact h
  have h13 := hfE (e, c) (by simp) 13 (by simp [evProtSlots]) fun _ => hnot 13 (by simp)
  have h4 := hfC (e, c) (by simp) 4 (by omega)
  simp only [show (8 * 13 : Nat) = 104 from rfl, show (8 * 4 : Nat) = 32 from rfl] at h13 h4
  rw [hrest, wt_eq, wt_eq, h13, h4]
  omega

/-! ## The release invariant of a fresh child -/

/-- Every object of a laid-out typing survives a release to the current pointers. -/
theorem above_live {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) :
    Above C p.sp p.fp o := by
  have hv := live_of hL ho
  unfold Above
  cases hr : (C.ty o.ty).region with
  | heap => trivial
  | fmem => exact (hv.2.1 hr).2
  | scratch => exact (hv.2.2 hr).1

/-- **The release invariant after the marks and one new scratch object.** The marks are the
pointers `p` of the state `s` (before the new object); the new object `⟨m, tm, sz⟩` lies below
`p.sp`; `frame_mem_ptr` is unchanged; the EV stack / memory slots of the old EVs are unchanged
and name objects of `Γ` at `s` (the EV hook). -/
theorem markOK_fresh {C : Cfg} {tEV : Nat} {Γ : Gam} {s t : State σ} {p p' : Ptrs}
    (hp : ptrsOf s = some p) (hord : p.Ordered) (hL : Layout C p Γ)
    (hp' : ptrsOf t = some p') {m : BitVec 64} {tm sz : Nat} (hsz : 0 < sz)
    (hsp' : p'.sp ≤ m.toNat) (hmsp : m.toNat + sz ≤ p.sp) (hfp' : p'.fp = p.fp)
    (hrgm : (C.ty tm).region = .scratch) (htm : tm ∉ adjTys) (htmE : tm ≠ tEV)
    (hrg : (C.ty tEV).region = .scratch ∧ ∀ t ∈ adjTys, (C.ty t).region = .scratch)
    (hev : ∀ e ∈ Γ, e.ty = tEV →
      fld t.memory e.base 8 = fld s.memory e.base 8 ∧ fld t.memory e.base 24 = fld s.memory e.base 24)
    (hdeps : ∀ e ∈ Γ, e.ty = tEV →
      (∃ x ∈ Γ, x.base = fld s.memory e.base 8) ∧ (∃ x ∈ Γ, x.base = fld s.memory e.base 24)) :
    MarkOK C tEV (Γ ++ [⟨m, tm, sz⟩]) t p.sp p.fp := by
  have hO := hord
  unfold Ptrs.Ordered at hO
  have hmem : ∀ o ∈ Γ ++ [⟨m, tm, sz⟩], o ∈ Γ ∨ o = ⟨m, tm, sz⟩ := by
    intro o ho
    rcases List.mem_append.mp ho with h | h
    · exact Or.inl h
    · exact Or.inr (List.mem_singleton.mp h)
  refine ⟨hrg, fun q hq => ?_, ?_, ?_, fun o ho => ?_, fun e he het hab => ?_,
    fun o ho hab x hx hxt hxo => ?_⟩
  · obtain rfl := ptrs_some hp' hq
    exact ⟨by omega, by omega⟩
  · exact ⟨hO.2.2.2.2.2.2.2, hO.2.2.2.2.1⟩
  · exact ⟨hO.2.2.2.2.2.2.1, hO.2.2.1⟩
  · rcases hmem o ho with h | rfl
    · have hv := live_of hL h
      refine ⟨fun hr => Or.inr (hv.2.2 hr).1, fun hr => Or.inl (hv.2.1 hr).2⟩
    · refine ⟨fun _ => Or.inl (by unfold Obj.hi; exact hmsp), fun hr => ?_⟩
      rw [hrgm] at hr; cases hr
  · rcases hmem e he with h | rfl
    · obtain ⟨h8, h24⟩ := hev e h het
      obtain ⟨⟨x, hx, hxb⟩, ⟨y, hy, hyb⟩⟩ := hdeps e h het
      exact ⟨⟨x, List.mem_append_left _ hx, by rw [h8]; exact hxb, above_live hL hx⟩,
        ⟨y, List.mem_append_left _ hy, by rw [h24]; exact hyb, above_live hL hy⟩⟩
    · exact absurd het htmE
  · rcases hmem x hx with h | rfl
    · exact above_live hL h
    · exact absurd hxt htm

/-- The records of the existing frames survive the release to the marks of a fresh child. -/
theorem frameAbove_fresh {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {p : Ptrs} (hL : Layout C p Γ)
    {m : BitVec 64} {tm sz : Nat} (htmE : tm ≠ tEV) (htmC : tm ≠ tCK) (f : Frame) :
    FrameAbove C tEV tCK (Γ ++ [⟨m, tm, sz⟩]) p.sp p.fp f := by
  intro o ho hot
  rcases List.mem_append.mp ho with h | h
  · exact above_live hL h
  · obtain rfl := List.mem_singleton.mp h
    rcases hot with ⟨-, h⟩ | ⟨-, h⟩
    · exact absurd h htmE
    · exact absurd h htmC

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.pa_coreX
#print axioms InitECandidate.Solver.MemSafe.Frames.markOK_fresh
#print axioms InitECandidate.Solver.MemSafe.Frames.frameAbove_fresh

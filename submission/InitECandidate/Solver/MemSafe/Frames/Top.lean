import InitECandidate.Solver.MemSafe.Frames.Epi

/-!
# Writes to the running frame

`top_write`: a memory change confined to driver slots of the running frame's EV record
(`evDriverSlots`: gas, halt, output, error, running) and to its `CK_DONE` keeps `G` (same typing,
same allocator state: a `Run` with `Γ' = Γ`), keeps `ChainL`, and keeps the weights of the
suspended frames. Used for the gas functions and `frame_exception`-like bodies.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Cells of the running frame the driver writes: EV driver slots of `e`, `CK_DONE` of `c`. -/
def TopCells (e c a : BitVec 64) : Prop :=
  (∃ j ∈ evDriverSlots, a = e + BitVec.ofNat 64 (8 * j)) ∨ a = c + BitVec.ofNat 64 32

theorem not_topCells {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {oe oc o : Obj} (hoe : oe ∈ Γ) (hoc : oc ∈ Γ) (ho : o ∈ Γ) (hse : 280 ≤ oe.size)
    (hsc : 104 ≤ oc.size) {k : Nat} (hk : k < o.size)
    (h1 : o.base ≠ oe.base ∨ ∀ j ∈ evDriverSlots, k ≠ 8 * j)
    (h2 : o.base ≠ oc.base ∨ k ≠ 32) : ¬ TopCells oe.base oc.base (o.base + BitVec.ofNat 64 k) := by
  rintro (⟨j, hj, h⟩ | h)
  · have hj' : j ≤ 24 := by simp [evDriverSlots] at hj; omega
    refine cell_ne hord hL ho hoe hk (by omega) ?_ h
    rcases h1 with h1 | h1
    · exact Or.inl h1
    · exact Or.inr (h1 j hj)
  · exact cell_ne hord hL ho hoc hk (by omega) (h2.imp id id) h

/-- **A write to the running frame** (driver slots, `CK_DONE`). -/
theorem top_write {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ : Gam} {s t : State σ} {fs rest : List Frame} {e c : BitVec 64}
    (hG : G C H Γ s) (hch : ChainL C tEV tCK Γ s fs) (hfs : fs = (e, c) :: rest)
    (hmod : ModifiesOnly (TopCells e c) s.memory t.memory) (hglob : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) :
    ∃ p, Run C H gw Γ s Γ t p p ∧ ChainL C tEV tCK Γ t fs ∧
      wsum t.memory rest = wsum s.memory rest := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hbne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have hsafe : SafeCells C H Γ s (TopCells oe.base oc.base) := by
    rintro a (⟨j, hj, rfl⟩ | rfl)
    · exact safe_ev hF hL hoe hoet hj (by simp [Obj.cell])
    · exact safe_ck hF hL hoc hoct (j := 4) (by omega) (by omega) (by simp [Obj.cell])
  have hG' : G C H Γ t := G_safe hF.hooks hG hsafe hmod hglob hd hbe
  have hrun : Run C H gw Γ s Γ t p p := by
    refine ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, mono_refl p, ext_refl Γ,
      newFresh_refl Γ p, hG', fun a ha => hmod a fun hr => ha ?_, fun g _ _ => by rw [hglob]⟩
    obtain ⟨o, ho, k, hk, -, -, he, -⟩ := hsafe a hr
    by_cases hp : (C.ty o.ty).slot k = .prot
    · exact Or.inr (Or.inl ⟨o, ho, k, hk, hp, he⟩)
    · exact Or.inl ⟨o, ho, k, hk, hp, he⟩
  have hnE := hch.nodupE
  have hnC := hch.nodupC
  rw [hfs] at hnE hnC
  simp only [List.map_cons] at hnE hnC
  have hkeep : ChainKeep s t fs := by
    refine ⟨gword_congr hglob _, gword_congr hglob _, ?_, ?_, ?_, ?_, ?_⟩
    rotate_left 2
    · intro f hf k hk
      rw [hfs] at hf
      simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      subst hf
      have hk' : k = 24 ∨ k = 40 := by simpa [evMem, evMemCap] using hk
      refine fld_mod hmod (not_topCells hord hL hoe hoc hoe hse hsc (by omega)
        (Or.inr fun j hj => ?_) (Or.inl hbne))
      simp [evDriverSlots] at hj
      omega
    · intro p' hp'
      exact ⟨p', by rw [← ptrsOf_congr hglob]; exact hp', rfl⟩
    rotate_left 1
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
      rw [← hob]
      have hk' : k = 0 ∨ k = 8 ∨ k = 16 ∨ k = 48 ∨ k = 56 ∨ k = 72 ∨ k = 80 := by
        simpa [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize]
          using hk
      exact fld_mod hmod (not_topCells hord hL hoe hoc ho hse hsc
        (by have := ck_size hF hL ho hot; omega)
        (Or.inl (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm)))
        (Or.inr (by omega)))
    · intro f hf k hk
      rw [hfs] at hf
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hk' : k < 280 := by
        simp [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen] at hk
        omega
      have hne : o.base ≠ oe.base := by rw [hob]; exact ne_mem_nodup hnE (List.mem_map_of_mem hf)
      exact fld_mod hmod (not_topCells hord hL hoe hoc ho hse hsc
        (by have := ev_size hF hL ho hot; omega) (Or.inl hne)
        (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
      rw [← hob]
      have hk' : k = 144 ∨ k = 216 := by simpa [evRetd, evRetdCap] using hk
      have hsz := ev_size hF hL ho hot
      by_cases hne : o.base = oe.base
      · refine fld_mod hmod (not_topCells hord hL hoe hoc ho hse hsc (by omega)
          (Or.inr fun j hj => ?_) (Or.inl (by rw [hne]; exact hbne)))
        simp [evDriverSlots] at hj
        omega
      · exact fld_mod hmod (not_topCells hord hL hoe hoc ho hse hsc (by omega) (Or.inl hne)
          (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
  have hst : GStep C tEV Γ Γ s t oe.base := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun e' he' het hne => ?_
    have hsz := ev_size hF hL he' het
    have hnc := base_ne_of_ty hL he' hoc (by rw [het, hoct]; exact hF.ne)
    exact ⟨fld_mod hmod (not_topCells hord hL hoe hoc he' hse hsc (by omega) (Or.inl hne) (Or.inl hnc)),
      fld_mod hmod (not_topCells hord hL hoe hoc he' hse hsc (by omega) (Or.inl hne) (Or.inl hnc))⟩
  refine ⟨p, hrun, chainL_keep hch hkeep (top := oe.base) (fun f hf => by
    rw [hfs] at hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
    rw [← hf]) hst, ?_⟩
  · refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · obtain ⟨o, ho, hob, hot⟩ := ev_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hne : o.base ≠ oe.base := by rw [hob]; exact ne_mem_nodup hnE (List.mem_map_of_mem hf)
      have hk' : k < 280 := by simp [evGasLeft, evSpilled, evRunning] at hk; omega
      exact fld_mod hmod (not_topCells hord hL hoe hoc ho hse hsc
        (by have := ev_size hF hL ho hot; omega) (Or.inl hne)
        (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
    · obtain ⟨o, ho, hob, hot⟩ := ck_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hne : o.base ≠ oc.base := by rw [hob]; exact ne_mem_nodup hnC (List.mem_map_of_mem hf)
      exact fld_mod hmod (not_topCells hord hL hoe hoc ho hse hsc
        (by have := ck_size hF hL ho hot; unfold ckDone; omega)
        (Or.inl (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm))) (Or.inl hne))

/-- **Eon.** The cells the driver writes, and `EV_OUTPUT_N` of the running frame (a bounded
word). -/
def TopCells16 (e c a : BitVec 64) : Prop := TopCells e c a ∨ a = e + BitVec.ofNat 64 128

theorem r16_top16 (e c : BitVec 64) {a : BitVec 64}
    (h : ∃ j ∈ evDriverSlots16, a = e + BitVec.ofNat 64 (8 * j)) : TopCells16 e c a := by
  obtain ⟨j, hj, rfl⟩ := h
  rcases evDriverSlots16_of hj with rfl | hj'
  · exact Or.inr rfl
  · exact Or.inl (Or.inl ⟨j, hj', rfl⟩)

theorem not_topCells16 {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {oe oc o : Obj} (hoe : oe ∈ Γ) (hoc : oc ∈ Γ) (ho : o ∈ Γ) (hse : 280 ≤ oe.size)
    (hsc : 104 ≤ oc.size) {k : Nat} (hk : k < o.size)
    (h1 : o.base ≠ oe.base ∨ ∀ j ∈ evDriverSlots16, k ≠ 8 * j)
    (h2 : o.base ≠ oc.base ∨ k ≠ 32) : ¬ TopCells16 oe.base oc.base (o.base + BitVec.ofNat 64 k) := by
  rintro (h | h)
  · exact not_topCells hord hL hoe hoc ho hse hsc hk
      (h1.imp id fun h j hj => h j (evDriverSlots_sub hj)) h2 h
  · exact cell_ne hord hL ho hoe hk (by omega) (k' := 128)
      (h1.imp id fun h => h 16 (by simp [evDriverSlots16])) h

/-- **Eon: `top_write` with the cell `EV_OUTPUT_N` added** (a bounded word, `hv`). -/
theorem top_write16 {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ : Gam} {s t : State σ} {fs rest : List Frame} {e c : BitVec 64}
    (hG : G C H Γ s) (hch : ChainL C tEV tCK Γ s fs) (hfs : fs = (e, c) :: rest)
    (hmod : ModifiesOnly (TopCells16 e c) s.memory t.memory)
    (hv : (rd t.memory (e + BitVec.ofNat 64 128)).toNat < 2 ^ 32) (hglob : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) :
    ∃ p, Run C H gw Γ s Γ t p p ∧ ChainL C tEV tCK Γ t fs ∧
      wsum t.memory rest = wsum s.memory rest := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hbne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have hS : SafeCells C H Γ s (TopCells oe.base oc.base) := by
    rintro a (⟨j, hj, rfl⟩ | rfl)
    · exact safe_ev hF hL hoe hoet hj (by simp [Obj.cell])
    · exact safe_ck hF hL hoc hoct (j := 4) (by omega) (by omega) (by simp [Obj.cell])
  have hsafe : SafeCellsB C H Γ s t (TopCells16 oe.base oc.base) := by
    intro a ha
    rcases ha with h | rfl
    · exact SafeCells.toB hS a h
    · exact safe_ev16 hF hL hoe hoet (by simp [Obj.cell]) hv
  have hG' : G C H Γ t := G_safeB hF.hooks hG hsafe hmod hglob hd hbe
  have hrun : Run C H gw Γ s Γ t p p := by
    refine ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, mono_refl p, ext_refl Γ,
      newFresh_refl Γ p, hG', fun a ha => hmod a fun hr => ha ?_, fun g _ _ => by rw [hglob]⟩
    obtain ⟨o, ho, k, hk, -, -, he, -⟩ := hsafe a hr
    by_cases hp : (C.ty o.ty).slot k = .prot
    · exact Or.inr (Or.inl ⟨o, ho, k, hk, hp, he⟩)
    · exact Or.inl ⟨o, ho, k, hk, hp, he⟩
  have hnE := hch.nodupE
  have hnC := hch.nodupC
  rw [hfs] at hnE hnC
  simp only [List.map_cons] at hnE hnC
  have hkeep : ChainKeep s t fs := by
    refine ⟨gword_congr hglob _, gword_congr hglob _, ?_, ?_, ?_, ?_, ?_⟩
    rotate_left 2
    · intro f hf k hk
      rw [hfs] at hf
      simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      subst hf
      have hk' : k = 24 ∨ k = 40 := by simpa [evMem, evMemCap] using hk
      refine fld_mod hmod (not_topCells16 hord hL hoe hoc hoe hse hsc (by omega)
        (Or.inr fun j hj => ?_) (Or.inl hbne))
      simp [evDriverSlots16] at hj
      omega
    · intro p' hp'
      exact ⟨p', by rw [← ptrsOf_congr hglob]; exact hp', rfl⟩
    rotate_left 1
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
      rw [← hob]
      have hk' : k = 0 ∨ k = 8 ∨ k = 16 ∨ k = 48 ∨ k = 56 ∨ k = 72 ∨ k = 80 := by
        simpa [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize]
          using hk
      exact fld_mod hmod (not_topCells16 hord hL hoe hoc ho hse hsc
        (by have := ck_size hF hL ho hot; omega)
        (Or.inl (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm)))
        (Or.inr (by omega)))
    · intro f hf k hk
      rw [hfs] at hf
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hk' : k < 280 := by
        simp [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen] at hk
        omega
      have hne : o.base ≠ oe.base := by rw [hob]; exact ne_mem_nodup hnE (List.mem_map_of_mem hf)
      exact fld_mod hmod (not_topCells16 hord hL hoe hoc ho hse hsc
        (by have := ev_size hF hL ho hot; omega) (Or.inl hne)
        (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
      rw [← hob]
      have hk' : k = 144 ∨ k = 216 := by simpa [evRetd, evRetdCap] using hk
      have hsz := ev_size hF hL ho hot
      by_cases hne : o.base = oe.base
      · refine fld_mod hmod (not_topCells16 hord hL hoe hoc ho hse hsc (by omega)
          (Or.inr fun j hj => ?_) (Or.inl (by rw [hne]; exact hbne)))
        simp [evDriverSlots16] at hj
        omega
      · exact fld_mod hmod (not_topCells16 hord hL hoe hoc ho hse hsc (by omega) (Or.inl hne)
          (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
  have hst : GStep C tEV Γ Γ s t oe.base := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun e' he' het hne => ?_
    have hsz := ev_size hF hL he' het
    have hnc := base_ne_of_ty hL he' hoc (by rw [het, hoct]; exact hF.ne)
    exact ⟨fld_mod hmod (not_topCells16 hord hL hoe hoc he' hse hsc (by omega) (Or.inl hne) (Or.inl hnc)),
      fld_mod hmod (not_topCells16 hord hL hoe hoc he' hse hsc (by omega) (Or.inl hne) (Or.inl hnc))⟩
  refine ⟨p, hrun, chainL_keep hch hkeep (top := oe.base) (fun f hf => by
    rw [hfs] at hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
    rw [← hf]) hst, ?_⟩
  · refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · obtain ⟨o, ho, hob, hot⟩ := ev_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hne : o.base ≠ oe.base := by rw [hob]; exact ne_mem_nodup hnE (List.mem_map_of_mem hf)
      have hk' : k < 280 := by simp [evGasLeft, evSpilled, evRunning] at hk; omega
      exact fld_mod hmod (not_topCells16 hord hL hoe hoc ho hse hsc
        (by have := ev_size hF hL ho hot; omega) (Or.inl hne)
        (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
    · obtain ⟨o, ho, hob, hot⟩ := ck_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hne : o.base ≠ oc.base := by rw [hob]; exact ne_mem_nodup hnC (List.mem_map_of_mem hf)
      exact fld_mod hmod (not_topCells16 hord hL hoe hoc ho hse hsc
        (by have := ck_size hF hL ho hot; unfold ckDone; omega)
        (Or.inl (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm))) (Or.inl hne))


end InitECandidate.Solver.MemSafe.Frames

import InitECandidate.Solver.MemSafe.Ptx.PtA0

/-!
# F3d: the `encode_transaction` call of the walk (`hdecEnc`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- Adding facts. -/
def addF (S : FS) (L : List Fct) : FS := fun f => S f ∨ f ∈ L

/-- The cells the facts read are kept by an encoder call. -/
theorem encout_mem_keep {Γ : Gam} {p p0 : Ptrs} {u t : State σ} {v : ValueHOL 64}
    (hord : p.Ordered) (h0 : p0.Ordered) (hL : Layout guestC p Γ) (hE : EncOut Γ p u t v) {f : Fct}
    (hh : f.holds p0 Γ p u) {a : BitVec 64} (ha : f.reads a) : t.memory a = u.memory a := by
  obtain ⟨Γ', p', rp, rl, hG', hp', hext, hnf, hmono, hPG, hfl, hrl, buf, n, hb8, hn8, hbuf1, hbuf2, hbuf3,
    hbuf4, hdis, hmod⟩ := hE
  have hord' := ordered_of_G hG' hp'
  apply hmod
  by_cases hcv : ∃ a' v', f = Fct.cellv a' v'
  · obtain ⟨a', v', rfl⟩ := hcv
    obtain rfl : a = a' := ha
    obtain ⟨-, o, ho, hst, k, hk, hp, rfl⟩ := hh
    rintro (hw | ⟨h1, h2⟩ | hna)
    · exact protCell_not_wcell hord hL ⟨o, ho, k, hk, hp, rfl⟩ hw
    · exact hdis _ h1 h2 (inObj_ext hext (cell_in hord hL ho hk))
    · exact hna (Helpers.allocated_of_inObj hL (cell_in hord hL ho hk))
  · obtain ⟨hn, hal⟩ := Fct.reads_alloc hh h0 hord (fun a v h => hcv ⟨a, v, h⟩) ha
    rintro (hw | ⟨h1, h2⟩ | hna)
    · exact hn (inObj_of_wcell hord hL hw)
    · unfold Ptrs.Allocated at hal
      obtain ⟨o1, o2, o3, o4, o5, o6, -, -⟩ := hord
      obtain ⟨q1, q2, q3, q4, q5, q6, -, -⟩ := hord'
      omega
    · exact hna hal

/-- **`var enc = encode_transaction(tx); k`**: the result is a slice of a fresh block adopted as a `tVAL` object. -/
theorem hdecEnc {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns (nm "enc") QT) (hE : HypEncTx σ)
    (hfin : ptAllNames.contains (nm "encode_transaction") = true)
    (htx : En (nm "tx") = some (.val (.word E.tx))) (hobj : S (Fct.obj E.tx tTX 0))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) {k : ProgHOL 64}
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat → buf % 8 = 0 → n % 8 = 0 → buf ≤ rp.toNat →
      rp.toNat + rl.toNat ≤ buf + n → buf + n < 2 ^ 64 →
      Hoare σ guestCtx (PA E (En.set (nm "enc") (wv [rp, rl]))
        (addF S [Fct.obj (BitVec.ofNat 64 buf) tVAL n])) k QT) :
    Hoare σ guestCtx (PA E En S)
      (.decCall (nm "enc") (.comb [.one, .one]) (nm "encode_transaction") [lv (nm "tx")] k) QT := by
  refine hdecCallK hQT (hE.and (funSpec_pt_gw_all guestCtx_code hfin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have h1 : ev s (lv (nm "tx")) = some (.val (.word E.tx)) := hlk _ _ htx
  have hvs' : vs = [.val (.word E.tx)] := by
    have h2 : evs s [lv (nm "tx")] = some [.val (.word E.tx)] := by
      simp only [evs, ev, evalListHOLExact] at h1 ⊢
      rw [h1]
    rw [h2] at hvs; exact (Option.some.inj hvs).symm
  have hre : PtRun D E.Γ0 E.s0 E.p0 Γ (callEntryStateHOLFinite s callee) p := ptRun_loc hr callee (s.clock - 1)
  have hLe : HoldsAll E.p0 Γ p (callEntryStateHOLFinite s callee) S := holdsAll_loc hL callee (s.clock - 1)
  have hGe := ptRun_G hre
  obtain ⟨o0, ho0, hb0, ht0, -⟩ := hLe _ hobj
  have hE' := hR v rfl Γ p E.tx hGe (ptRun_ptrs hre) hvs' ⟨o0, ho0, hb0, ht0⟩
  have hgl' : ∀ g, ptW.contains g = false → st.globals.lookup g = (callEntryStateHOLFinite s callee).globals.lookup g :=
    fun g hg => hgl g (cW_of_ptW hg)
  obtain ⟨Γ'', p', rp, rl, buf, n, hfl, hrun, hstep, hrl, hb2, hb3, o, ho, hob, hot, hos, hb8, hn8, hb1, hb4⟩ :=
    adopt_enc hre hE' hgl'
  have hord' := ordered_of_G hstep.hG' hstep.hp'
  have hbnd : buf + n < 2 ^ 64 := by
    have := hord'.2.1; unfold heapEnd at *; omega
  obtain ⟨ws, hlen, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  obtain ⟨a, b, rfl⟩ : ∃ a b, ws = [a, b] := by
    match ws, hlen with
    | [a, b], _ => exact ⟨a, b, rfl⟩
  rw [Spec.Fq12.flatten_wv] at hfl
  simp only [List.map_cons, List.map_nil, List.cons.injEq, HolWordLab.word.injEq, and_true] at hfl
  obtain ⟨rfl, rfl⟩ := hfl
  obtain ⟨q, hq, -, hLay, -⟩ := hGe
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hre))
  have hgl2 : ∀ g ty, S (Fct.gobj g ty) → gword st g = gword (callEntryStateHOLFinite s callee) g := by
    intro g ty hg
    have := hgl g (hGl g ty hg)
    unfold gword
    rw [this]
  have hL' : HoldsAll E.p0 Γ'' p' st S :=
    holds_step hstep (ptRun_ord0 hr) (fun f hf a ha => encout_mem_keep (ptRun_ord hre) (ptRun_ord0 hr) hLay hE' (hLe f hf) ha)
      hgl2 hLe
  have hL'' := holdsAll_loc hL' s.locals st.clock
  refine hoare_pre (hk a b buf n hrl hb8 hn8 hb2 hb3 hbnd) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨D, Γ'', p', ptRun_set (ptRun_loc hrun s.locals st.clock) (nm "enc") _, hD, ?_⟩,
    lke_set (lke_restore hlk) _ _⟩
  intro f hf
  rcases hf with hf | hf
  · have := hL'' f hf
    cases f <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · rw [List.mem_singleton] at hf
    subst hf
    exact ⟨o, ho, by rw [hob], hot, by omega⟩

end InitECandidate.Solver.MemSafe.Ptx

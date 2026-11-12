import InitECandidate.Solver.MemSafe.Ptx.PtM10

/-!
# F3e: adopting `te` at the state level (`pa_adopt_te`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The facts that survive adopting `te`: the safe ones, the `al_addrs` block, and the new object. -/
def SAd (S : FS) (wt wa : BitVec 64) (nbl nvc : Nat) : FS := fun f =>
  (S f ∧ SafeK f) ∨ f ∈ [Fct.fbuf wa nbl, Fct.arrbuf wa nbl nvc 20, Fct.arrbuf wa nbl 1 20, Fct.obj wt tTE 200]

theorem pa_adopt_te {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat} {u : State σ} (hP : PtPre E)
    (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    (hc : v1 = 0 ∧ v2 = 0 ∨ v1 = T1 E ∧ v2 = T2 E) (h : PA E En S u) :
    PA E En (SAd S wt wa nbl (nv.toNat + 1)) u := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := h
  have hord0 := ptRun_ord0 hr
  have hord := ptRun_ord hr
  have hm := ptRun_mono hr
  have hfb := hL _ K.hfbt
  obtain ⟨hw8, hwb, hwe⟩ := hL _ K.hppt
  have hlive := fbuf_end_le hL hord0 hord K.hfbt K.hppt (by norm_num) (by norm_num)
  obtain ⟨hm0, -⟩ := hL _ K.hm0
  obtain ⟨hm144, -⟩ := hL _ K.hm144
  obtain ⟨hm152, -⟩ := hL _ K.hm152
  have hsd : ∃ o ∈ Γ, o.base = rd u.memory wt ∧ o.ty = tB24 := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ K.C0.osd
    refine ⟨o, ho, ?_, ht⟩
    have : rd u.memory (wt + BitVec.ofNat 64 0) = rd u.memory wt := by simp
    rw [← this, hm0]; exact hb
  have hSA : SubArr Γ (rd u.memory (wt + BitVec.ofNat 64 144)) (rd u.memory (wt + BitVec.ofNat 64 152)).toNat tAUTH 120 := by
    rw [hm144, hm152]
    rcases hc with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inl rfl
    · exact subarr_tx hP hr hD
  have hG'' := g_adopt_te (ptRun_G hr) (ptRun_ptrs hr) hord0 hfb ⟨hw8, hwb, hwe⟩ hlive hsd hSA
  obtain ⟨q, hq, -, hLay, -⟩ := ptRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
  have hbytes := fresh_bytes hLay hfb (by norm_num) hwb hwe hlive hord hord0
  let x : Obj := ⟨wt, tTE, 200⟩
  have hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh E.p0 q a := by
    intro a h1 h2
    have h1' : wt.toNat ≤ a.toNat := h1
    have h2' : a.toNat < wt.toNat + 200 := h2
    exact Or.inl ⟨(hbytes a.toNat h1' h2').1, (hbytes a.toNat h1' h2').2.1⟩
  have hr'' := ptRun_adopt hr hG'' hfr
  refine ⟨⟨D, Γ ++ [x], q, hr'', hD, fun f hf => ?_⟩, hlk⟩
  rcases hf with ⟨hS, hsafe⟩ | hf
  · exact holds_adopt hord0 hord hm hfr hsafe (hL f hS)
  obtain ⟨hwa8, hwab, hwae⟩ := hL _ K.hppa
  have hordw : wt.toNat + 200 ≤ wa.toNat := hL _ K.hord
  have hfba := hL _ K.hfba
  have hout : ∀ a : Nat, wa.toNat ≤ a → ¬ (x.lo ≤ a ∧ a < x.hi) := by
    intro a ha ⟨h1, h2⟩
    simp only [Obj.lo, Obj.hi, x] at h1 h2
    omega
  have hni : ∀ a : Nat, wa.toNat ≤ a → ¬ InObj Γ a → ¬ InObj (Γ ++ [x]) a := fun a ha hn hin => by
    rcases inObj_append hin with h | h
    · exact hn h
    · exact hout a ha h
  have harr : ∀ c, (Fct.arrbuf wa nbl c 20).holds E.p0 Γ q u → (Fct.arrbuf wa nbl c 20).holds E.p0 (Γ ++ [x]) q u := by
    intro c ⟨h1, h2, h3, hent, hcells⟩
    refine ⟨h1, h2, h3, fun j hj => ?_, fun j hj => ⟨?_, (hcells j hj).2⟩⟩
    · exact holds_adopt (u := u) (f := Fct.bufok0 (rd u.memory (wa + BitVec.ofNat 64 (8 * j))) 20) hord0 hord hm hfr trivial (hent j hj)
    · have hnc := (hcells j hj).1
      refine hni _ ?_ hnc
      have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
      rw [toNat_add_ofNat (by omega)]
      omega
  simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl
  · refine ⟨hfba.1, fun a ha => ⟨(hfba.2 a ha).1, hni a.toNat ?_ (hfba.2 a ha).2⟩⟩
    obtain ⟨h1, h2, h3⟩ := ha
    omega
  · exact harr _ (hL _ K.harrf)
  · exact harr _ (hL _ K.harr1)
  · exact ⟨x, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, le_refl _⟩

end InitECandidate.Solver.MemSafe.Ptx

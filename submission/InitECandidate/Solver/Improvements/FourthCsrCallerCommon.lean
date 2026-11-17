import InitECandidate.Solver.Improvements.FourthCsrExactCH
import InitECandidate.Solver.Improvements.FourthCsrInnerLink
import InitECandidate.Solver.Band7.CsrRules

/-! Conditional CSR caller budgets. The new recursion is a bookkeeping
expression for this typed proof walk, not an all-state program analyzer. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthCsrCaller
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie
variable {σ : Type}

def capMax : Nat := 4127616

def cb : ProgHOL 64 → Nat
  | .decCall _ _ f _ k => 1 + tb f + cb k
  | .call _ f _ => 1 + tb f + 0
  | .dec _ _ _ k => cb k
  | .seq a b => cb a + cb b
  | .ite _ a b => max (cb a) (cb b)
  | .while (.cmp .less (.var .local i) (.const c)) b =>
      if i = nm "pass" ∧ c = 2 then 2 * (cb b + 1)
      else (c.toNat + 1) * (cb b + 1)
  | .while (.cmp .less (.var .local i) (.var .local count)) b =>
      if i = nm "j" ∧ count = nm "icount" then capMax * (cb b + 1)
      else (2 ^ 64 + 1) * (cb b + 1)
  | .while _ b => (2 ^ 64 + 1) * (cb b + 1)
  | _ => 0

def TypedK (SW ADDR INN : BitVec 64) (Γ : Gam) : Prop :=
  KAd SW ADDR Γ ∧ FourthCsrInnerLink.InnerFits INN Γ

theorem typedK_stable (SW ADDR INN : BitVec 64) :
    ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → TypedK SW ADDR INN Γ → TypedK SW ADDR INN Γ' := by
  intro Γ Γ' hx hg h
  exact ⟨kad_stable SW ADDR Γ Γ' hx hg h.1,
    FourthCsrInnerLink.inner_fits_stable hx h.2⟩

/-! The allocator rule is copied from the accepted source with only its
continuation budget generalized; all actual summary/return premises remain. -/
set_option maxHeartbeats 0 in
theorem gc_allocQ_bound {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) {n : Nat}
    (hn64 : n < 2 ^ 64) (hn8 : n % 8 = 0) {x : MlS} {kv : List (MlS × ValueHOL 64)}
    (hx : ∀ p ∈ kv, p.1 ≠ x) {E : Gam → Ptrs → Mem → Prop}
    (Q : BitVec 64 → Gam → Ptrs → Mem → Prop)
    (hQ : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs) (H : BitVec 64), Ext Γ Γ' → Heap a Γ q s →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      Mod a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [] [.val (.word (BitVec.ofNat 64 n))] Γ q s st →
      E Γ q s.memory → H.toNat = q.hp → FBlk a.p0 H n Γ' q' → st.memory = s.memory →
      Q H Γ' q' st.memory)
    {k : ProgHOL 64} {Bk : Nat} {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hk : ∀ H : BitVec 64, CH σ (GI a (LV ((x, ValueHOL.val (.word H)) :: kv)) (Q H)) k
      (GP a L2 E2 Rv) Bk)
    (hres : ∀ m0 m : LocalsH, LV kv m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    CH σ (GI a (LV kv) E) (.decCall x .one (nm "alloc") [cw n] k) (GP a L3 E2 Rv)
      (1 + tb (nm "alloc") + Bk) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hev : ∀ s : State σ, evs s [cw n] = some [.val (.word (BitVec.ofNat 64 n))] := fun s =>
    evs_cons (ev_cw s n) evs_nil
  have hZ : (BitVec.ofNat 64 n).toNat = n := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn64]
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH Dn.alloc_R) (funSpec_allocRel hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ H : BitVec 64, v = .val (.word H) ∧ LV ((x, v) :: kv) m)
    (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) → Q H Γ q mm) (L2 := L2) (E2 := E2)
    ?_ ?_ ?_ ?_ hres
  · intro s Γ q hs hL hh hE vs hvs
    rw [hev s] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl (hev s)).1, fun x hx => argCells_any (by simp) hx |>.elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ' hh hext hh' hmo hnf hnfp hmd hret
    rw [hev s] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells [PT.any] [.val (.word (BitVec.ofNat 64 n))] y :=
      fun y => argCells_any (by simp)
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh H hH => ?_⟩
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [.val (.word (BitVec.ofNat 64 n))] Γ Γ' q q'
        s st r := ⟨hh, hext, hh', hmo, hnf, hnfp,
      fun x hw hal => hmd x hw (hnoarg x) (by rintro ⟨-, c, hc, -⟩; simp [capSub] at hc) hal, hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv (by rw [hZ]; exact hn8)
    rw [hv'] at hH
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
    subst hH
    rw [hZ] at hFB
    exact hQ s st Γ Γ' q q' H' hext hh hh' hmo hnf hmd hE hHn hFB hmem
  · intro s st v hL hsh
    obtain ⟨H, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨H, rfl, lv_cons (lv_set hL hx _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact ch_false fun s _ h => hw (by obtain ⟨H, hH, -⟩ := h.1; exact ⟨H, hH⟩)
    obtain ⟨H, rfl⟩ := hw
    exact ch_pre (hk H) (fun s _ ⟨⟨H', hH', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH'
      subst hH'
      exact ⟨hL, Γ, q, he, hh, hsc, hE H rfl⟩)


#print axioms gc_allocQ_bound
end FourthCsrCaller

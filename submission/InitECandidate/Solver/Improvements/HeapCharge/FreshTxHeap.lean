import InitECandidate.Solver.Improvements.HeapCharge.HashTableHeapExact
import InitECandidate.Solver.MemSafe.Ptx.PtNewCode
import InitECandidate.Solver.MemSafe.Entry.PmPost

/-! Exact heap frontier on normal return from the installed state_fresh_tx body. -/
set_option autoImplicit false
set_option maxRecDepth 50000
namespace FreshTxHeap
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Ptx
open InitECandidate.Solver.MemSafe.Entry
namespace A
open InitECandidate.Solver.Spec.Inv InitECandidate.Solver.MemSafe.AllocImpl

variable {σ : Type}
def Frontier (x : Nat) (s : State σ) : Prop :=
  ∃ w : BitVec 64, s.globals.lookup hpN = some (.val (.word w)) ∧ w.toNat = x ∧
    x ≤ InitECandidate.Solver.Spec.Inv.heapEnd ∧ x % 8 = 0

abbrev H (x : Nat) (p : ProgHOL 64) (y : Nat) : Prop :=
  Hoare σ guestCtx (Frontier x) p (fun r t => r = none ∧ Frontier y t)

private theorem store_same {x : Nat} {addr val : ExpHOL 64} : H (σ := σ) x (.store addr val) x := by
  exact hoare_store fun _ _ h _ _ _ _ _ _ => ⟨rfl, h⟩

private theorem assign_same {x : Nat} : H (σ := σ) x (.assign .global (nm "journal_n") (cw 0)) x := by
  apply hoare_assignK
  rintro s _ ⟨w, hw, h⟩ v _ _
  exact ⟨rfl, w, (setKvar_gw (g := hpN) (by decide) v s).trans hw, h⟩

private theorem htab_result {x kl cp : Nat} {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {vs : List (ValueHOL 64)}
    {v : ValueHOL 64} (hkl : kl < 65537) (hcp : cp < 1048577)
    (h : Frontier x s) (hvs : evs s [cw kl, cw cp] = some vs)
    (spec : ∀ KL CP H0 : BitVec 64, vs = [.val (.word KL), .val (.word CP)] →
      (callEntryStateHOLFinite s callee).globals.lookup hpN = some (.val (.word H0)) →
      H0.toNat ≤ InitECandidate.Solver.Spec.Inv.heapEnd → H0.toNat % 8 = 0 →
      KL.toNat ≤ 2 ^ 16 → CP.toNat ≤ 2 ^ 20 → ∀ w : ValueHOL 64, PanSemResultExact.returned v = .returned w →
      ∃ H1 : BitVec 64, st.globals.lookup hpN = some (.val (.word H1)) ∧
      H1.toNat = H0.toNat + footprint KL CP ∧ H1.toNat ≤ InitECandidate.Solver.Spec.Inv.heapEnd ∧ H1.toNat % 8 = 0) :
    Frontier (x + footprint (BitVec.ofNat 64 kl) (BitVec.ofNat 64 cp)) st := by
  rw [evs_cons (ev_cw s kl) (evs_cons (ev_cw s cp) evs_nil)] at hvs
  cases hvs
  obtain ⟨w, hw, rfl, hr, h8⟩ := h
  have hkl' : (BitVec.ofNat 64 kl).toNat ≤ 2^16 := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega
  have hcp' : (BitVec.ofNat 64 cp).toNat ≤ 2^20 := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega
  obtain ⟨W, H1, H2, H3, H4⟩ := spec _ _ w rfl hw hr h8 hkl' hcp' v rfl
  exact ⟨W, H1, H2, H2 ▸ H3, H2 ▸ H4⟩

private theorem htab {x kl cp : Nat} (hkl : kl < 65537) (hcp : cp < 1048577) :
    H (σ := σ) x (.call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw kl, cw cp])
      (x + footprint (BitVec.ofNat 64 kl) (BitVec.ofNat 64 cp)) := by
  refine hoare_callA (funSpec_htab_new_heap_exact guestCtx_code) ?_
  intro s _ h vs hvs callee v st spec _ _
  exact ⟨rfl, htab_result (callee := callee) hkl hcp h hvs spec⟩

private theorem alloc72 {x : Nat} :
    H (σ := σ) x (.call (some (some (.global, nm "ts"), none)) (nm "alloc") [cw 72]) (x + 72) := by
  refine hoare_callA (funSpec_alloc guestCtx_code) ?_
  rintro s _ ⟨w, hw, rfl, hb, h8⟩ vs hvs callee v st R _ _
  rw [evs_cons (ev_cw s 72) evs_nil] at hvs; cases hvs
  obtain ⟨N, P, Q, hv, hw', _, hQ, _, _, _, hq, hend⟩ := R _ rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hv
  subst N
  change s.globals.lookup hpN = some (.val (.word P)) at hw'
  rw [hw] at hw'; cases hw'
  have hnum : (w + ((BitVec.ofNat 64 72) + BitVec.ofNat 64 7)).toNat = w.toNat + 79 := by
    have hn : ((BitVec.ofNat 64 72) + BitVec.ofNat 64 7).toNat = 79 := rfl
    unfold InitECandidate.Solver.Spec.Inv.heapEnd at hb
    rw [toNat_add_lt (by rw [hn]; omega), hn]
  rw [hnum] at hq
  exact ⟨rfl, Q, (setKvar_gw (g := hpN) (by decide) _ _).trans hQ, by omega, by omega, by omega⟩

private theorem fresh_body {x : Nat} : Hoare σ guestCtx (Frontier x) sfBody
    (fun r t => ∀ v, r = some (.returned v) → Frontier (x + 22000) t) := by
  unfold sfBody sf0 sf1
  refine hoare_seqP alloc72 ?_
  refine hoare_seqP store_same ?_
  refine hoare_decCallS (funSpec_htab_new_heap_exact guestCtx_code) ?_
  intro s hs h vs hvs callee v st spec hst hsh
  have ha := htab_result (callee := callee) (kl := 20) (cp := 64) (by decide) (by decide) h hvs spec
  refine hoare_pre (P := Frontier (x + 4320)) ?_ (fun _ _ he => he ▸ ha)
  unfold sf2 sf3 sf4 sf5 sf6 sf7 sf8 sf9 sf10 sf11 sf12 sf13 sf14 sf15 sf16 sf17
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 20) (cp := 64) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 52) (cp := 64) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 20) (cp := 16) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 52) (cp := 16) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 32) (cp := 16) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 20) (cp := 16) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP (htab (kl := 52) (cp := 16) (by decide) (by decide)) ?_
  refine hoare_seqP store_same ?_
  refine hoare_seqP assign_same ?_
  exact hoare_return fun _ _ hp _ _ _ _ => hp

theorem state_fresh_tx_heap {σ : Type} : FunSpec σ guestCtx (nm "state_fresh_tx")
    (fun _ s r t => ∀ x, Frontier x s → ∀ v, r = .returned v → Frontier (x + 22000) t) := by
  intro vs body callee rs hl s hs hloc r hr x hx v hv
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := Struct.lookupCode_zero sfCode hl
  have result := fresh_body s hs hx (by rw [hr,hv]; trivial)
  exact result v (hr.trans (congrArg some hv))

theorem frontier_of_ptrs {s : State σ} {p : Ptrs} (hp : ptrsOf s = some p) (hord : p.Ordered) :
    Frontier p.hp s := by
  obtain ⟨a,b,c,ha,_,_,rfl⟩ := ptrsOf_some hp
  exact ⟨a, lookup_of_gword ha, rfl, hord.2.1, hord.2.2.2.2.2.1⟩

theorem frontier_eq_hp {s : State σ} {p : Ptrs} {x : Nat} (hp : ptrsOf s = some p) (h : Frontier x s) :
    p.hp = x := by
  obtain ⟨a,b,c,ha,_,_,rfl⟩ := ptrsOf_some hp
  obtain ⟨w,hw,hx,_⟩ := h
  have hh : gword s gHeap = some w := gword_of_lookup hw
  rw [ha] at hh; cases hh
  exact hx

#print axioms state_fresh_tx_heap
end A
end FreshTxHeap

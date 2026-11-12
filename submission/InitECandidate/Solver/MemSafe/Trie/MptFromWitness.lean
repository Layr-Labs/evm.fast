import InitECandidate.Solver.MemSafe.Trie.DwtmF
import InitECandidate.Solver.MemSafe.Ins.Tail
import InitECandidate.Solver.Band2.MptFromWitness

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `mpt_from_witness`

```
fun 1 mpt_from_witness(1 db, 1 root_hash, 1 secured) {
  var 1 root = decode_witness_to_mpt(db, root_hash); return mpt_new(root, secured); }
```
`sumSpecA_mpt_from_witness`: signature `[any, any, any]`, Pre `MfwPre` (`DwTPre` on the first two arguments);
the result is the handle `M` with `HRec Γ' p' mem M` (aligned heap block outside `Γ'`, root cell `Fits nodeU`).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

def mfwSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

def MfwPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ DB RH S : BitVec 64, vs = [.val (.word DB), .val (.word RH), .val (.word S)] ∧
    DwTPre [.val (.word DB), .val (.word RH)] s Γ

theorem sumSpecA_mpt_from_witness :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "mpt_from_witness") mfwSig
      MfwPre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M : BitVec 64, v = .val (.word M) ∧ HRecU p0 Γ' p' t.memory M) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs p0 Γ' p' mm v => ∃ M : BitVec 64, v = .val (.word M) ∧
    HRecU p0 Γ' p' mm M) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen Band2.code_mfw hl
  obtain ⟨DB, RH, S, rfl, ⟨DB', rh', hvs', pq, hpq, hord, hW⟩, DB2, rh2, hvs2, hND⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs2
  obtain ⟨rfl, rfl⟩ := hvs2
  rw [hh.2.1] at hpq
  cases hpq
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) mfwSig [] _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let kv0 : List (MlS × BitVec 64) := [(nm "db", DB), (nm "root_hash", RH), (nm "secured", S)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
  have hroot : ∀ p ∈ kv0, p.1 ≠ nm "root" := by lkv_fresh [kv0]
  let E0 : Gam → Ptrs → Mem → Prop := fun Γ q M => q = p0 ∧ Spec.Mpt.Leaves.NdbW DB p0.hp M ∧
    Hooks.NdbR Γ M DB
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' mm v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ M : BitVec 64, v = .val (.word M) ∧ HRecU a.p0 Γ' p' mm M
  refine hoareG_conseq (P := GI a (LKV kv0) E0)
    (Q := GP a (fun _ => False) (fun _ _ _ => True) Rv0) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, rfl, hW, hND⟩
  · intro r t _ _ h
    exact gp_final h
  unfold Band2.mfwBody
  refine gp_decCall ha sumSpecA_dwtm_F (funSpec_true _) (by simp [dwFSig]) (fun _ => rfl)
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "root") = some v ∧ ∃ R : BitVec 64, v = .val (.word R))
    (E1 := fun v Γ q M => ∀ R : BitVec 64, v = .val (.word R) → Fits Γ Types.nodeU R)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨hQ.1, fun v hv _ R hR => ?_⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hroot _,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ h => h.elim)
  · have hvs' : evs s [lv (nm "db"), lv (nm "root_hash")] =
        some [.val (.word DB), .val (.word RH)] :=
      evs_cons (ev_lw (hL (nm "db", DB) (by simp [kv0]))) (evs_cons (ev_lw (hL (nm "root_hash", RH)
        (by simp [kv0]))) evs_nil)
    rw [hvs'] at hvs
    cases hvs
    obtain ⟨hq, hNdb, hNR⟩ := hE
    subst hq
    refine ⟨(anyArgsG (by simp [dwFSig]) rfl hvs').1, fun c hc => argCells_any (by simp [dwFSig]) hc,
      fun callee => ⟨⟨DB, .val (.word RH), rfl, q, ?_, heap_ord hh', hNdb⟩, DB, .val (.word RH), rfl, hNR⟩⟩
    exact (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh'.2.1
  · have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
    obtain ⟨R', hv', hfit⟩ := hQ.2 v hv q q' hq0 co.heap.2.1
    rw [hv'] at hR
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hR
    subst hR
    exact hfit
  intro v
  refine gp_tail ha (f := nm "mpt_new") (sg' := mnwSig) sumSpecA_mpt_new (funSpec_true _)
    (by simp [mnwSig]) (fun h => by simp [mnwSig] at h) (L' := fun _ => False)
    (E' := fun _ _ _ => True) ?_ ?_
  · intro s Γ q hs hL hh' hE vs1 hvs
    obtain ⟨R, rfl⟩ := hL.2.2
    have hev : evs s [lv (nm "root"), lv (nm "secured")] = some [.val (.word R), .val (.word S)] :=
      evs_cons (ev_lw hL.2.1) (evs_cons (ev_lw (hL.1 (nm "secured", S) (by simp [kv0]))) evs_nil)
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp [mnwSig]) rfl hev).1, fun c hc => argCells_any (by simp [mnwSig]) hc,
      fun _ => ⟨R, S, rfl, hE R rfl⟩⟩
  · intro s st vs1 callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
    refine ⟨hQ.1, fun v' hv' => ?_⟩
    obtain ⟨M, hv, hH, hU⟩ := hQ.2 v' hv' q q' hq0 co.heap.2.1
    exact ⟨retOK_nil, M, hv, hH, fun c hc hal =>
      hU c hc (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hal)⟩

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_mpt_from_witness

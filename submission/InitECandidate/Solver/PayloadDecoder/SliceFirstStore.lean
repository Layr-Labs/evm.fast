import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import InitECandidate.Solver.Spec.Inv.Alloc

/-! If a nonempty reparse could return, its first output cell belonged to
ordinary guest memory. An arbitrary starting heap pointer cannot avoid this check. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe (State)
variable {σ : Type} {X : Ctx 64}

def First (a c : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "arr") = some (.val (.word a)) ∧
  s.locals.lookup (nm "i") = some (.val (.word 0)) ∧
  s.locals.lookup (nm "count") = some (.val (.word c))

theorem invalidBody (a c : BitVec 64) (hd : ¬ X.memaddrs a) :
    Hoare σ X (First a c) slLoopBody (fun _ _ => False) := by
  unfold slLoopBody
  refine hoare_decCallL (funSpec_true _) (fun _ _ _ h => h)
    fun s _ ⟨ha,hi,_⟩ _ _ _ value st _ _ _ => ?_
  refine hoare_seq (R := fun _ _ => False) ?_ (fun _ _ _ _ _ h => h.elim)
    (fun _ _ h _ => h.elim)
  refine hoare_store fun t ht he w v m hw hv hs => ?_
  subst t
  have hA : (setVarHOLFinite (nm "total") value {st with locals := s.locals}).locals.lookup (nm "arr")
      = some (.val (.word a)) := (lk_set_ne _ _ (by decide)).trans ha
  have hI : (setVarHOLFinite (nm "total") value {st with locals := s.locals}).locals.lookup (nm "i")
      = some (.val (.word 0)) := (lk_set_ne _ _ (by decide)).trans hi
  rw [ev_add2 (ev_lw hA) (ev_mul2 (ev_lw hI) (ev_cw _ 16))] at hw
  have hw' : a = w := by simpa using hw
  subst w
  obtain ⟨x,y,_,_,rfl⟩ := ev_add2_inv' hv
  simp only [flattenHOL] at hs
  exact hd (ht.2.1 ▸ (stores_one hs).1)

theorem invalidLoop (a c : BitVec 64) (hpos : 0 < c.toNat) (hd : ¬ X.memaddrs a) :
    Hoare σ X (First a c) (.while slCond slLoopBody) (fun _ _ => False) := by
  refine hoare_while (fun _ h => h)
    (hoare_post (hoare_pre (invalidBody a c hd) (fun _ _ h => h.1)) (fun _ _ _ _ h => h.elim)) ?_
  intro s _ ⟨_,hi,hc⟩ hx
  unfold slCond at hx
  rw [ev_cmp (ev_lw hi) (ev_lw hc)] at hx
  have hb : wordCmpHOL .lower (0 : BitVec 64) c = true := by
    simpa [wordCmpHOL,BitVec.lt_def] using hpos
  have hx' : wordCmpHOL .lower (0 : BitVec 64) c = false := by simpa using hx
  exact Bool.noConfusion (hb.symm.trans hx')

theorem ordinaryBounds {a : BitVec 64} (hd : guestCtx.memaddrs a) :
    2701131776 ≤ a.toNat ∧ a.toNat < 2^40 := by
  obtain ⟨i, hi, rfl⟩ := (Compiler.Backend.StackRemove.mem_addresses _ _ _).mp hd
  simp only [Compiler.Backend.StackRemove.bytesInWord, BitVec.toNat_add, BitVec.toNat_mul,
    BitVec.toNat_ofNat]
  simp only [InitE.stackStart, InitE.sourceBase, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
    InitE.stackSize, InitE.globalsWords] at hi ⊢
  omega

theorem allocatedCount {c a q : BitVec 64}
    (hc : c.toNat ≤ 2^42) (hd : guestCtx.memaddrs a)
    (hq : q.toNat = (a + (c * BitVec.ofNat 64 16 + BitVec.ofNat 64 7)).toNat / 8 * 8)
    (hend : q.toNat ≤ 2952790016) : c.toNat ≤ 15728640 := by
  obtain ⟨ha,ha'⟩ := ordinaryBounds hd
  have hmul : (c * BitVec.ofNat 64 16).toNat = c.toNat * 16 := by
    rw [BitVec.toNat_mul]
    change (c.toNat * 16) % 2^64 = _
    exact Nat.mod_eq_of_lt (by omega)
  rw [BitVec.toNat_add, BitVec.toNat_add, hmul] at hq
  change q.toNat = ((a.toNat + (c.toNat * 16 + 7) % 2^64) % 2^64) / 8 * 8 at hq
  omega

#print axioms invalidLoop
#print axioms allocatedCount
end PayloadDecoder

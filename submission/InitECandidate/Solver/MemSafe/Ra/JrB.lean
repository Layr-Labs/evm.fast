import InitECandidate.Solver.MemSafe.Ra.JrA
import InitECandidate.Solver.MemSafe.Sp.SiNJ

/-!
# JrFix, part B: the cost rules over the prefix predicate `PZ`

`PZ si0 pl0 L R t`: the locals satisfy `L`, and for some `Γ`, `p`: `Fz si0 pl0 Γ p t` and the extra facts `R Γ p t` (which must ignore
the locals: `RLoc`). Rules: `cz_dec` (a declaration whose variable `L` does not track), `cz_seqSame` (a `skip` or a guard first),
`cz_assignG` (a store to a free scalar global).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The prefix predicate. -/
def PZ (si0 pl0 : BitVec 64) (L : Locs → Prop) (R : Gam → Ptrs → State σ → Prop) (t : State σ) : Prop :=
  L t.locals ∧ ∃ Γ p, Fz si0 pl0 Γ p t ∧ R Γ p t

/-- Extra facts that ignore the locals and the clock. -/
def RLoc (R : Gam → Ptrs → State σ → Prop) : Prop :=
  ∀ Γ p (t : State σ) (l : Locs) (c : Nat), R Γ p t → R Γ p { t with locals := l, clock := c }

theorem hoare_skipEq (s0 : State σ) :
    Hoare σ guestCtx (fun t => t = s0) .skip (fun r t => r = none → t = s0) :=
  hoare_skip fun _ _ h _ => h

theorem hoare_guardEq {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} (s0 : State σ) :
    Hoare σ guestCtx (fun t => t = s0) (.ite c (.raise x ex) .skip) (fun r t => r = none → t = s0) :=
  hoare_ite hoare_raise (hoare_skip fun _ _ h _ => h.1)

section rules
variable {si0 pl0 : BitVec 64} {L : Locs → Prop} {R : Gam → Ptrs → State σ → Prop}

theorem pz_set {t : State σ} (h : PZ si0 pl0 L R t) (hR : RLoc R) (n : MlS) (v : ValueHOL 64)
    (hL : L (setVarHOLFinite n v t).locals) : PZ si0 pl0 L R (setVarHOLFinite n v t) := by
  obtain ⟨-, Γ, p, hz, hr⟩ := h
  exact ⟨hL, Γ, p, fz_set hz n v, hR Γ p t _ t.clock hr⟩

/-- A declaration whose variable the locals predicate does not track. -/
theorem cz_dec {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat} (hR : RLoc R)
    (hL : ∀ (t : State σ) v, L t.locals → L (setVarHOLFinite n v t).locals)
    (hk : Inv.CostP σ guestCtx (PZ si0 pl0 L R) body B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 L R) (.dec n sh e body) B :=
  Inv.costP_dec fun s _ hP v _ _ => hk.pre fun t _ ht => by subst ht; exact pz_set hP hR n v (hL s v hP.1)

/-- A first statement that ends where it started (`skip`, a guard), of cost `0`. -/
theorem cz_seqSame {P : State σ → Prop} {a b : ProgHOL 64} {B : Nat}
    (ha0 : ∀ s0 : State σ, Hoare σ guestCtx (fun t => t = s0) a (fun r t => r = none → t = s0))
    (hc : Cost σ guestCtx a 0) (hk : Inv.CostP σ guestCtx P b B) : Inv.CostP σ guestCtx P (.seq a b) (0 + B) :=
  Inv.costP_seq (R := P) (Inv.costP_of_cost hc)
    (fun s hs hp htr hr => by rw [ha0 s s hs rfl htr hr]; exact hp) hk

/-- A store to a free scalar global keeps `Fz`. -/
theorem fz_setG {Γ : Gam} {p : Ptrs} {s : State σ} {g : MlS} {v : ValueHOL 64} (hz : Fz si0 pl0 Γ p s) (hg : FreeG g)
    (hgt : guestC.GT.lookup g = some .scalar) (hvalid : isValidValueHOLFinite s .global g v = true) :
    ∃ w : BitVec 64, v = .val (.word w) ∧ Fz si0 pl0 Γ p (setKvarHOLFinite .global g v s) := by
  obtain ⟨hG, hp, hE, ho, hr⟩ := hz
  obtain ⟨q, -, -, -, -, -, hGl, -⟩ := id hG
  obtain ⟨w0, hw0, -⟩ := hGl g _ hgt
  have hlook : lookupKvarHOLFinite .global g s = some (.val (.word w0)) := by
    unfold gword at hw0
    simp only [lookupKvarHOLFinite]
    revert hw0
    rcases h : s.globals.lookup g with _ | ⟨_ | ⟨_ | _⟩ | _⟩ <;> simp
    rintro rfl; rfl
  unfold isValidValueHOLFinite at hvalid
  rw [hlook] at hvalid
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' (v := v) (by simpa [shapeOfHOLExact] using hvalid)
  have hGs := G_setGlobPtr hG hgt hg.hpg hg.hne (w := w) (by trivial)
  have hgw : ∀ g', g' ≠ g → gword (setKvarHOLFinite .global g (.val (.word w)) s) g' = gword s g' :=
    fun g' hne' => HtabEntries.gword_setG_ne hne'
  refine ⟨w, rfl, hGs, ?_, ?_, ho, hr⟩
  · unfold ptrsOf
    rw [hgw gHeap hg.hne.1.symm, hgw gFrame hg.hne.2.1.symm, hgw gScratch hg.hne.2.2.symm]
    exact hp
  · obtain ⟨⟨e, he, hs1⟩, ⟨c, hc, hs2⟩⟩ := hE
    exact ⟨⟨e, by rw [hgw _ (fun e => hg.hev.1 e.symm)]; exact he, hs1⟩,
      ⟨c, by rw [hgw _ (fun e => hg.hev.2 e.symm)]; exact hc, hs2⟩⟩

/-- A store to a free scalar global, then `b`. -/
theorem cz_assignG {g : MlS} {e : ExpHOL 64} {b : ProgHOL 64} {B : Nat} (hg : FreeG g)
    (hgt : guestC.GT.lookup g = some .scalar)
    (hRg : ∀ Γ p (t : State σ) w, R Γ p t → R Γ p (setKvarHOLFinite .global g (.val (.word w)) t))
    (hk : Inv.CostP σ guestCtx (PZ si0 pl0 L R) b B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 L R) (.seq (.assign .global g e) b) (0 + B) :=
  Inv.costP_seq (R := PZ si0 pl0 L R) (Inv.costP_of_cost (cost_assign _ _ _))
    (hoare_assignK fun s _ hP v _ hvalid _ => by
      obtain ⟨hL, Γ, p, hz, hr⟩ := hP
      obtain ⟨w, rfl, hz'⟩ := fz_setG hz hg hgt hvalid
      exact ⟨hL, Γ, p, hz', hRg Γ p s w hr⟩) hk

end rules

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cz_dec
#print axioms InitECandidate.Solver.MemSafe.Att.cz_seqSame
#print axioms InitECandidate.Solver.MemSafe.Att.cz_assignG

import InitECandidate.Solver.MemSafe.Sound2

/-!
# Function entry: parameters and the initial abstract environment (M1)

* `lookupCode_gen`: a successful code lookup binds parameter `i` to argument `i`
  (parameter names are distinct) and checks its shape.
* `initEnv ps pts`: the abstract environment at entry for parameters `ps` with types `pts`:
  `fits k` ↦ `slotAV k`, `eq c` ↦ `cst c`, `buf n` ↦ a temporary of the argument, other
  one-word parameters ↦ `top`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Parameter binding -/

section fold
variable {β : Type}

def bindF (m : MlS → Option β) (e : MlS × β) : MlS → Option β :=
  fun c => if c = e.1 then some e.2 else m c

theorem fold_notin {c : MlS} :
    ∀ (l : List (MlS × β)) (m : MlS → Option β), c ∉ l.map Prod.fst → l.foldl bindF m c = m c
  | [], _, _ => rfl
  | e :: l, m, h => by
      simp only [List.map_cons, List.mem_cons, not_or] at h
      rw [List.foldl_cons, fold_notin l _ h.2]
      simp [bindF, h.1]

theorem fold_at :
    ∀ (l : List (MlS × β)) (m : MlS → Option β) (i : Nat) (hi : i < l.length),
      (l.map Prod.fst).Nodup → l.foldl bindF m l[i].1 = some l[i].2
  | [], _, _, hi, _ => absurd hi (by simp)
  | e :: l, m, 0, _, hnd => by
      simp only [List.map_cons, List.nodup_cons] at hnd
      simp only [List.getElem_cons_zero, List.foldl_cons]
      rw [fold_notin l _ hnd.1]
      simp [bindF]
  | e :: l, m, i + 1, hi, hnd => by
      simp only [List.map_cons, List.nodup_cons] at hnd
      simp only [List.getElem_cons_succ, List.foldl_cons]
      exact fold_at l _ i (by simp at hi; omega) hnd.2

end fold

theorem lookupCode_gen {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some (ps, bd, rsh)) {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ps.length = vs.length ∧
      ∀ i (hi : i < ps.length) (hv : i < vs.length), callee.lookup ps[i].1 = some vs[i] ∧
        shapeEqHOL ps[i].2 (shapeOfHOLExact vs[i]) = true := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨hnd, hlen, hall⟩ := hcond
      refine ⟨rfl, rfl, hlen, fun i hi hv => ⟨?_, ?_⟩⟩
      · have hz : i < ((ps.map Prod.fst).zip vs).length := by simp; omega
        have hnd' : (((ps.map Prod.fst).zip vs).map Prod.fst).Nodup := by
          rw [List.map_fst_zip (by simp; omega)]; exact hnd
        have := fold_at ((ps.map Prod.fst).zip vs) (fun _ => none) i hz hnd'
        simp only [List.getElem_zip, List.getElem_map] at this
        exact this
      · have hz : i < (ps.zip vs).length := by simp; omega
        have := (List.all_eq_true.mp hall) (ps.zip vs)[i] (List.getElem_mem hz)
        simpa using this
    · simp at hx

/-! ## The initial environment -/

/-- The abstraction of an argument of type `pt` and shape `sh` (no temporaries). -/
def argAV (pt : PT) (sh : ShapeHOL) : AV :=
  match sh with
  | .one =>
    match pt with
    | .fits k => slotAV k
    | .eq c => .cst (BitVec.ofNat 64 c)
    | _ => .top
  | _ => shAV sh

/-- The entry environment: parameters in order; `buf n` parameters get a temporary. -/
def initEnv : List (MlS × ShapeHOL) → List PT → Nat → AEnv → AEnv
  | (x, sh) :: ps, pt :: pts, i, A =>
    match pt, sh with
    | .buf n, .one =>
      initEnv ps pts (i + 1) ⟨setL x (.tmp A.T.length 0) A.L, A.T ++ [some ⟨n, .arg i⟩]⟩
    | pt, sh => initEnv ps pts (i + 1) ⟨setL x (argAV pt sh) A.L, A.T⟩
  | _, _, _, A => A

end InitECandidate.Solver.MemSafe

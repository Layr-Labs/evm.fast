import InitECandidate.Solver.MemSafe.Trans

/-!
# The statement checker (M1, computable part)

`chk E A p` abstractly executes `p` from the abstract environment `A` and returns the
abstract environments at normal completion, `break` and `continue` (`AOut`), or `none` when a
store, a return or a construct is not accepted. Stores must hit a non-`prot` slot of a typed
object with a fitting value (`stOK`), or a live temporary within its size; byte and 32-bit
stores a `scalar` slot or a live temporary (`cellOK`); returns must fit the signature
(`retOK`); global assignments never touch the allocator or protected globals and give typed
globals fitting words (`gAsgOK`). Calls need a verified signature (`findSig`); a fresh
result becomes a new temporary (`bindRes`); a tail call's result types must imply the
caller's (`rtsImp`); a handler runs from the caller's environment. Join at `ite`
(`AOut.join`), restore at `dec`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The checker's static context: configuration, verified callee signatures, own signature. -/
structure CEnv where
  C : Cfg
  tab : CTab
  sg : Sig
  caps : List Cap := []

def chkFuel : Nat := 24

/-! ## Environments -/

def AV.join (u v : AV) : AV :=
  if u = v then u else
    match u.isWord && v.isWord with
    | true => .top
    | false => .unk

/-- Drop `x`; bind it to `av` unless `av = unk`. -/
def setL (x : MlS) (av : AV) (L : List (MlS × AV)) : List (MlS × AV) :=
  match av with
  | .unk => L.filter (fun q => q.1 != x)
  | _ => (x, av) :: L.filter (fun q => q.1 != x)

/-- Restore `x` to its abstraction `old` from an outer environment. -/
def restL (x : MlS) (old : Option AV) (L : List (MlS × AV)) : List (MlS × AV) :=
  match old with
  | some av => setL x av L
  | none => L.filter (fun q => q.1 != x)

def joinL (L M : List (MlS × AV)) : List (MlS × AV) :=
  L.filterMap fun q =>
    match M.lookup q.1 with
    | some v => some (q.1, q.2.join v)
    | none => none

def joinTD : Option TD → Option TD → Option TD
  | some a, some b => if a = b then some a else none
  | _, _ => none

/-- Entrywise join, padded to the longer list (a temporary missing on one side is dead). -/
def joinT : List (Option TD) → List (Option TD) → List (Option TD)
  | a :: as, b :: bs => joinTD a b :: joinT as bs
  | [], bs => bs.map fun _ => none
  | as, [] => as.map fun _ => none

def AEnv.join (A B : AEnv) : AEnv := ⟨joinL A.L B.L, joinT A.T B.T⟩

def joinO : Option AEnv → Option AEnv → Option AEnv
  | some A, some B => some (A.join B)
  | some A, none => some A
  | none, B => B

structure AOut where
  nrm : Option AEnv
  brk : Option AEnv
  cnt : Option AEnv

def AOut.join (o o' : AOut) : AOut := ⟨joinO o.nrm o'.nrm, joinO o.brk o'.brk, joinO o.cnt o'.cnt⟩

def AOut.normal (A : AEnv) : AOut := ⟨some A, none, none⟩

def AOut.never : AOut := ⟨none, none, none⟩

/-! ## Stores and returns -/

/-- The number of flattened words of a value abstracted as `av` (if known). -/
def AV.words : AV → Option Nat
  | .unk => none
  | .wide n => some n
  | _ => some 1

/-- The constant `c` is below `2^32` (`FK.bnd`). -/
def bndB (c : BitVec 64) : Bool := Nat.blt c.toNat 4294967296

theorem bndB_iff {c : BitVec 64} : bndB c = true ↔ c.toNat < 2 ^ 32 := by
  unfold bndB; rw [Nat.blt_eq]

/-- A one-word value abstracted as `av` fits a slot of kind `kd` (never a `prot` slot). -/
def bndAV : AV → Bool
  | .cst c => bndB c
  | .fk .bnd => true
  | _ => false

def ptrAV (t : Nat) : AV → Bool
  | .gp t' o => t == t' && o == 0
  | _ => false

def nptrAV (t : Nat) : AV → Bool
  | .gp t' o => t == t' && o == 0
  | .fk (.nptr t') => t == t'
  | _ => false

def uptrAV (ts : List Nat) : AV → Bool
  | .gp t' o => ts.contains t' && o == 0
  | .fk (.uptr ts') => ts'.all ts.contains
  | _ => false

def fitsAV : FK → AV → Bool
  | .scalar, _ => true
  | .prot, _ => false
  | .bnd, v => bndAV v
  | .ptr t, v => ptrAV t v
  | .nptr t, v => nptrAV t v
  | .uptr ts, v => uptrAV ts v

theorem fitsAV_prot_false {v : AV} : fitsAV .prot v = false := rfl

theorem fitsAV_ptr_inv {t : Nat} {ve : AV} (h : fitsAV (.ptr t) ve = true) :
    ∃ o, ve = .gp t o ∧ o = 0 := by
  cases ve <;> simp [fitsAV, ptrAV] at h
  rename_i t' o
  exact ⟨o, by rw [h.1], h.2⟩

theorem fitsAV_nptr_inv {t : Nat} {ve : AV} (h : fitsAV (.nptr t) ve = true) :
    (∃ o, ve = .gp t o ∧ o = 0) ∨ ve = .fk (.nptr t) := by
  cases ve <;> simp [fitsAV, nptrAV] at h
  · rename_i t' o
    exact Or.inl ⟨o, by rw [h.1], h.2⟩
  · rename_i k
    cases k <;> simp at h
    rename_i t'
    exact Or.inr (by rw [h])

theorem fitsAV_uptr_inv {ts : List Nat} {ve : AV} (h : fitsAV (.uptr ts) ve = true) :
    (∃ t o, ve = .gp t o ∧ t ∈ ts ∧ o = 0) ∨
      ∃ ts', ve = .fk (.uptr ts') ∧ ∀ x ∈ ts', x ∈ ts := by
  cases ve <;> simp [fitsAV, uptrAV] at h
  · rename_i t' o
    exact Or.inl ⟨t', o, rfl, h.1, h.2⟩
  · rename_i k
    cases k <;> simp at h
    rename_i ts'
    exact Or.inr ⟨ts', rfl, h⟩

theorem fitsAV_bnd_inv {ve : AV} (h : fitsAV .bnd ve = true) :
    (∃ c, ve = .cst c ∧ bndB c = true) ∨ ve = .fk .bnd := by
  have h' : bndAV ve = true := h
  cases ve with
  | cst c => exact Or.inl ⟨c, rfl, h'⟩
  | fk k =>
    cases k with
    | bnd => exact Or.inr rfl
    | scalar => exact Bool.noConfusion h'
    | prot => exact Bool.noConfusion h'
    | ptr t => exact Bool.noConfusion h'
    | nptr t => exact Bool.noConfusion h'
    | uptr ts => exact Bool.noConfusion h'
  | unk => exact Bool.noConfusion h'
  | top => exact Bool.noConfusion h'
  | gp t o => exact Bool.noConfusion h'
  | tmp k o => exact Bool.noConfusion h'
  | wide n => exact Bool.noConfusion h'
  | np ts o => exact Bool.noConfusion h'

/-- Slots `k, k+1, ..., k+n-1` of type `d` may receive a value abstracted as `ve`. -/
def slotsOK (d : TyD) (k n : Nat) (ve : AV) : Bool :=
  match n with
  | 1 => fitsAV (d.slot k) ve
  | n => (List.range n).all fun i => d.slot (k + i) == .scalar

/-- A store of `nw` words at offset `o` through a nullable pointer to the types `ts`: the
offset stays below `npMax` (a null base faults) and every type takes the value. -/
def npStOK (C : Cfg) (ts : List Nat) (o nw : Nat) (ve : AV) : Bool :=
  o % 8 == 0 && 0 < nw && Nat.ble (o + 8 * nw) npMax &&
    ts.all (fun t => Nat.ble (o + 8 * nw) (C.ty t).minSz && slotsOK (C.ty t) (o / 8) nw ve)

/-- The store rule. -/
def stOK (E : CEnv) (A : AEnv) (a e : ExpHOL 64) : Bool :=
  match (aev E.C A chkFuel e).words with
  | none => false
  | some nw =>
    match aev E.C A chkFuel a with
    | .gp t o =>
      match o % 8, Nat.ble (o + 8 * nw) (E.C.ty t).minSz with
      | 0, true => 0 < nw && slotsOK (E.C.ty t) (o / 8) nw (aev E.C A chkFuel e)
      | _, _ => false
    | .tmp k o =>
      match A.T[k]? with
      | some (some td) => Nat.ble (o + 8 * nw) td.size
      | _ => false
    | av =>
      match npOf av with
      | some (ts, o) => npStOK E.C ts o nw (aev E.C A chkFuel e)
      | none => false

/-- A result abstraction fitting the declared result types. -/
def retOK (rt : List RT) (av : AV) : Bool :=
  match rt with
  | [] => true
  | [.any] => true
  | [.fits k] => av.isWord && fitsAV k av
  | rts => rts.all (· == .any)

/-! ## Calls -/

/-- Slots `k, ..., k + n - 1` of `d` are all `scalar`. -/
def scalarRun (d : TyD) (k n : Nat) : Bool :=
  (List.range n).all fun i => d.slot (k + i) == .scalar

/-- `n` bytes at the abstract pointer `av` may be written with any data. -/
def bufChk (E : CEnv) (A : AEnv) (av : AV) (n : Nat) : Bool :=
  match av with
  | .tmp k o =>
    match A.T[k]? with
    | some (some td) => Nat.ble (o + n) td.size
    | _ => false
  | .gp t o =>
    -- the slots `o / 8, ...` overlapped by the `n` bytes at offset `o` are all `scalar`
    Nat.ble (8 * (o / 8) + 8 * ((o % 8 + n + 7) / 8)) (E.C.ty t).minSz &&
      scalarRun (E.C.ty t) (o / 8) ((o % 8 + n + 7) / 8)
  | _ => false

/-- One argument against its parameter type. -/
def ptChk (E : CEnv) (A : AEnv) (avs : List AV) (pt : PT) (av : AV) : Bool :=
  match pt with
  | .any => true
  | .fits k => av.isWord && fitsAV k av
  | .buf n => bufChk E A av n
  | .bufArg i c d =>
    match avs[i]? with
    | some (.cst x) => bufChk E A av (c * x.toNat + d)
    | _ => false
  | .eq c => av == .cst (BitVec.ofNat 64 c)

def argsChk (E : CEnv) (A : AEnv) (ps : List PT) (avs : List AV) : Bool :=
  ps.length == avs.length && (ps.zip avs).all fun q => ptChk E A avs q.1 q.2

/-- An allocator window is open (a live window temporary). -/
def winOpen (A : AEnv) : Bool :=
  A.T.any fun t => match t with
    | some ⟨_, .win _⟩ => true
    | _ => false

/-- A verified signature of `f` the arguments satisfy (first instance), whose protected
global writes the caller may make, and which does not grow `Γ` unless the caller may and no
window is open. -/
def findSig (E : CEnv) (A : AEnv) (f : MlS) (avs : List AV) : Option Sig :=
  (E.tab.find? fun q => q.1 == f && argsChk E A q.2.1.params avs &&
    q.2.1.gw.all E.sg.gw.contains && (!q.2.1.grows || (E.sg.grows && !winOpen A)) &&
    capSub q.2.2 E.caps).map (·.2.1)

/-- The abstraction of a one-word result of type `rt`. -/
def resAV : RT → AV
  | .fits k => slotAV k
  | _ => .top

/-- The abstraction of the result bound to a target of shape `sh`. -/
def retAV (sg : Sig) (sh : ShapeHOL) : AV :=
  match sh, sg.ret with
  | .one, [rt] => resAV rt
  | .one, _ => .top
  | _, _ => shAV sh

/-- The size of a fresh one-word result (result types `rt`, argument abstractions `avs`). -/
def freshSz (avs : List AV) : List RT → Option Nat
  | [.fresh n] => some n
  | [.freshArg i c d] =>
    match avs[i]? with
    | some (.cst x) => some (c * x.toNat + d)
    | _ => none
  | _ => none

/-- The environment after binding a call result of shape `sh` to the local `x`: a fresh
one-word result becomes a new temporary. -/
def bindRes (A : AEnv) (avs : List AV) (sg : Sig) (sh : ShapeHOL) (x : MlS) : AEnv :=
  match sh, freshSz avs sg.ret with
  | .one, some n => ⟨setL x (.tmp A.T.length 0) A.L, A.T ++ [some ⟨n, .fresh⟩]⟩
  | _, _ => ⟨setL x (retAV sg sh) A.L, A.T⟩

/-- The environment after `x = f(args)`: the result has the shape of the old value of `x`,
known to be one word when `A` describes `x` by a one-word abstraction. -/
def bindAsg (A : AEnv) (avs : List AV) (sg : Sig) (x : MlS) : AEnv :=
  match A.L.lookup x with
  | some av => if av.isWord then bindRes A avs sg .one x else
      match av with
      | .wide n => ⟨setL x (.wide n) A.L, A.T⟩
      | _ => ⟨setL x .unk A.L, A.T⟩
  | none => ⟨setL x .unk A.L, A.T⟩

/-- An assignment keeps the declared shape of the local (`wide n`) when the value's own
abstraction is unknown. -/
def keepAV (A : AEnv) (x : MlS) (av : AV) : AV :=
  match av, A.L.lookup x with
  | .unk, some (.wide n) => .wide n
  | av, _ => av

/-- The callee's result type `r'` implies the caller's `r` (a tail call). -/
def rtImp (avs : List AV) (r r' : RT) : Bool :=
  match r, r' with
  | .any, _ => true
  | .fits k, .fits k' => k == k'
  | .fresh n, .fresh n' => Nat.ble n n'
  | .fresh n, .freshArg i c d =>
    match avs[i]? with
    | some (.cst x) => Nat.ble n (c * x.toNat + d)
    | _ => false
  | _, _ => false

def rtsImp (avs : List AV) : List RT → List RT → Bool
  | [], _ => true
  | r :: rs, [] => r == .any && rtsImp avs rs []
  | r :: rs, r' :: rs' => rtImp avs r r' && rtsImp avs rs rs'

/-! ## Globals and one-cell stores -/

/-- The allocator globals (never assigned by checked code). -/
def allocG : List MlS := [gHeap, gFrame, gScratch]

/-- Assigning a value abstracted as `av` to the global `g` is allowed. -/
def gAsgOK (C : Cfg) (g : MlS) (av : AV) : Bool :=
  !allocG.contains g && !C.PG.contains g &&
    match C.GT.lookup g with
    | some k => av.isWord && fitsAV k av
    | none => true

/-- A one-cell write (byte or 32-bit store) at the abstract address `av`: the containing
aligned cell is a `scalar` slot of a typed object or a cell of a live temporary. -/
def cellOK (E : CEnv) (A : AEnv) (av : AV) : Bool :=
  match av with
  | .gp t o => Nat.ble (o / 8 * 8 + 8) (E.C.ty t).minSz && (E.C.ty t).slot (o / 8) == .scalar
  | .tmp k o =>
    match A.T[k]? with
    | some (some td) => Nat.blt o td.size
    | _ => false
  | _ => false

/-! ## Allocator windows -/

/-- The region of an allocator mark function. -/
def markRg (f : MlS) : Option Region :=
  match f == nm "heap_mark", f == nm "scratch_mark", f == nm "frame_mem_mark" with
  | true, _, _ => some .heap
  | false, true, _ => some .scratch
  | false, false, true => some .fmem
  | false, false, false => none

/-- The region of an allocator release function. -/
def relRg (f : MlS) : Option Region :=
  match f == nm "heap_release", f == nm "scratch_release", f == nm "frame_mem_release" with
  | true, _, _ => some .heap
  | false, true, _ => some .scratch
  | false, false, true => some .fmem
  | false, false, false => none

/-- The temporaries after releasing window `k`: the window and the buffer arguments stay
live, everything allocated in this activation and every other window dies. -/
def relT (k : Nat) (T : List (Option TD)) : List (Option TD) :=
  T.mapIdx fun j t => if j = k then t else
    match t with
    | some ⟨n, .arg i⟩ => some ⟨n, .arg i⟩
    | _ => none

/-! ## Loops -/

/-- A local pointing into a temporary beyond the first `n` becomes a plain word. -/
def cutAV (n : Nat) : AV → AV
  | .tmp k o => if k < n then .tmp k o else .top
  | av => av

/-- An environment cut back to its first `n` temporaries. -/
def truncE (n : Nat) (B : AEnv) : AEnv := ⟨B.L.map (fun q => (q.1, cutAV n q.2)), B.T.take n⟩

/-- The loop environment after one more round: join with the body's normal and `continue`
environments; temporaries allocated in the body are dead at the loop head (cut back to the
loop environment's own). -/
def wjoin (I : AEnv) (o : AOut) : AEnv :=
  truncE I.T.length ((joinO (joinO (some I) o.nrm) o.cnt).getD I)

/-- The output of a loop with invariant environment `I` and body output `o`: it exits
normally with `I` (condition false) or by `break`. -/
def loopOut (I : AEnv) (o : AOut) : AOut := ⟨joinO (some I) o.brk, none, none⟩

/-! ## Constant-trip loops -/

/-- The bound on the iterations of an unrolled loop. -/
def unrollFuel : Nat := 40

/-- A loop whose condition (a comparison) folds to a constant: run the body while it is
non-zero. The result is the exit environment of the loop (`none`: no normal exit); `none`
when the condition does not fold or the fuel runs out. A repeated environment is a fixpoint
(the condition stays true, the loop exits only by `break`). -/
def unroll (C : Cfg) (c : ExpHOL 64) (step : AEnv → Option AOut) : Nat → AEnv → Option (Option AEnv)
  | 0, _ => none
  | n + 1, A =>
    match aev C A chkFuel c with
    | .cst w =>
      match decEq w 0 with
      | isTrue _ => some (some A)
      | isFalse _ =>
        match step A with
        | none => none
        | some o =>
          match joinO o.nrm o.cnt with
          | none => some o.brk
          | some A' =>
            match decEq A' A with
            | isTrue _ => some o.brk
            | isFalse _ =>
              match unroll C c step n A' with
              | none => none
              | some r => some (joinO o.brk r)
    | _ => none

/-- Unroll only loops with a comparison as condition. -/
def unrollW (C : Cfg) (c : ExpHOL 64) (step : AEnv → Option AOut) (A : AEnv) : Option (Option AEnv) :=
  match c with
  | .cmp _ _ _ => unroll C c step unrollFuel A
  | _ => none

/-! ## The checker -/

/-- The abstraction bound by `var x : sh = e` (the shape check refines it). -/
def bindAV (sh : ShapeHOL) (av : AV) : AV :=
  match sh with
  | .one => if av.isWord then av else .top
  | _ => match av with
    | .wide n => .wide n
    | _ => shAV sh

/-- The environment after a normal return of a call with handler, by target. -/
def hTgt (E : CEnv) (A : AEnv) (avs : List AV) (sg : Sig) :
    Option (VarKind × MlS) → Option AEnv
  | none => some A
  | some (.local, x) => some (bindAsg A avs sg x)
  | some (.global, g) => match gAsgOK E.C g (retAV sg .one) with
    | true => some A
    | false => none

/-- Abstract execution of one statement. -/
def chk (E : CEnv) (A : AEnv) : ProgHOL 64 → Option AOut
  | .skip => some (.normal A)
  | .annot _ _ => some (.normal A)
  | .tick => some (.normal A)
  | .break => some ⟨none, some A, none⟩
  | .continue => some ⟨none, none, some A⟩
  | .raise _ _ => some .never
  | .return e => match retOK E.sg.ret (aev E.C A chkFuel e) with
    | true => some .never
    | false => none
  | .seq p q =>
    match chk E A p with
    | none => none
    | some o =>
      match o.nrm with
      | none => some o
      | some A' =>
        match chk E A' q with
        | none => none
        | some o' => some ⟨o'.nrm, joinO o.brk o'.brk, joinO o.cnt o'.cnt⟩
  | .ite c p q =>
    match aev E.C A chkFuel c with
    | .cst w =>
      -- a constant condition: only the live branch
      match decEq w 0 with
      | isTrue _ => chk E A q
      | isFalse _ => chk E A p
    | _ =>
      match chk E A p, chk E A q with
      | some o, some o' => some (o.join o')
      | _, _ => none
  | .dec x sh e body =>
    match chk E ⟨setL x (bindAV sh (aev E.C A chkFuel e)) A.L, A.T⟩ body with
    | none => none
    | some o =>
      let r := fun (B : AEnv) => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)
      some ⟨o.nrm.map r, o.brk.map r, o.cnt.map r⟩
  | .assign .local x e => some (.normal ⟨setL x (keepAV A x (aev E.C A chkFuel e)) A.L, A.T⟩)
  | .assign .global g e => match gAsgOK E.C g (aev E.C A chkFuel e) with
    | true => some (.normal A)
    | false => none
  | .primitive x _ _ => some (.normal ⟨setL x .unk A.L, A.T⟩)
  | .storeByte a _ => match cellOK E A (aev E.C A chkFuel a) with
    | true => some (.normal A)
    | false => none
  | .store32 a _ => match cellOK E A (aev E.C A chkFuel a) with
    | true => some (.normal A)
    | false => none
  | .while c body =>
    match unrollW E.C c (fun I => chk E I body) A with
    | some r => some ⟨r, none, none⟩
    | none =>
    -- up to three rounds to stabilize the loop environment
    match chk E A body with
    | none => none
    | some o1 =>
      match decEq (wjoin A o1) A with
      | isTrue _ => some (loopOut A o1)
      | isFalse _ =>
        let I1 := wjoin A o1
        match chk E I1 body with
        | none => none
        | some o2 =>
          match decEq (wjoin I1 o2) I1 with
          | isTrue _ => some (loopOut I1 o2)
          | isFalse _ =>
            let I2 := wjoin I1 o2
            match chk E I2 body with
            | none => none
            | some o3 =>
              match decEq (wjoin I2 o3) I2 with
              | isTrue _ => some (loopOut I2 o3)
              | isFalse _ => none
  | .shMemStore _ _ _ => some (.normal A)
  | .shMemLoad _ .local x _ => some (.normal ⟨setL x .top A.L, A.T⟩)
  | .store a e => match stOK E A a e with
    | true => some (.normal A)
    | false => none
  | .call (some (none, none)) f args =>
    match relRg f, args.map (aev E.C A chkFuel) with
    | some rg, [.tmp k 0] =>
      match A.T[k]? with
      | some (some ⟨0, .win rg'⟩) =>
        match decEq rg' rg with
        | isTrue _ => some (.normal ⟨A.L, relT k A.T⟩)
        | isFalse _ => none
      | _ => none
    | _, _ =>
      match findSig E A f (args.map (aev E.C A chkFuel)) with
      | some _ => some (.normal A)
      | none => none
  | .call (some (some (.local, x), none)) f args =>
    match findSig E A f (args.map (aev E.C A chkFuel)) with
    | some sg => some (.normal (bindAsg A (args.map (aev E.C A chkFuel)) sg x))
    | none => none
  | .call (some (some (.global, g), none)) f args =>
    match findSig E A f (args.map (aev E.C A chkFuel)) with
    | some sg => match gAsgOK E.C g (retAV sg .one) with
      | true => some (.normal A)
      | false => none
    | none => none
  | .call none f args =>
    match findSig E A f (args.map (aev E.C A chkFuel)) with
    | some sg => match rtsImp (args.map (aev E.C A chkFuel)) E.sg.ret sg.ret with
      | true => some .never
      | false => none
    | none => none
  | .call (some (tgt, some (eid, hv, hp))) f args =>
    -- `TrapErr` is abortive (rev. 5): it may not be caught
    match eid == trapErr with
    | true => none
    | false =>
    match findSig E A f (args.map (aev E.C A chkFuel)) with
    | some sg =>
      match hTgt E A (args.map (aev E.C A chkFuel)) sg tgt,
          chk E ⟨setL hv .unk A.L, A.T⟩ hp with
      | some B, some oh => some ((AOut.normal B).join oh)
      | _, _ => none
    | none => none
  | .decCall x sh f args k =>
    match markRg f, args, sh with
    | some rg, [], .one =>
      match chk E ⟨setL x (.tmp A.T.length 0) A.L, A.T ++ [some ⟨0, .win rg⟩]⟩ k with
      | none => none
      | some o =>
        let r := fun (B : AEnv) => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)
        some ⟨o.nrm.map r, o.brk.map r, o.cnt.map r⟩
    | _, _, _ =>
      match findSig E A f (args.map (aev E.C A chkFuel)) with
      | some sg =>
        match chk E (bindRes A (args.map (aev E.C A chkFuel)) sg sh x) k with
        | none => none
        | some o =>
          let r := fun (B : AEnv) => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)
          some ⟨o.nrm.map r, o.brk.map r, o.cnt.map r⟩
      | none => none
  | _ => none

end InitECandidate.Solver.MemSafe

import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data464
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody464_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "bm",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.shift Flapjack.Shift.lsr
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64])
              (Flapjack.Exp.const 6#64),
            Flapjack.Exp.const 8#64],
        Flapjack.Exp.const 8#64]]

def globalBody464_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "bm",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pc") (Flapjack.Exp.const 6#64),
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "bm",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pc")
                  (Flapjack.Exp.const 6#64),
                Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64)
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pc", Flapjack.Exp.const 63#64])])

def globalBody464_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "adv"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 96#64],
      Flapjack.Exp.const 2#64])

def globalBody464_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "adv" (Flapjack.Exp.const 2#64)

def globalBody464_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "adv" (Flapjack.Exp.const 1#64)

def globalBody464_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody464_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "nx")
        (Flapjack.Exp.const 91#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 127#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "nx"))]) globalBody464_4 globalBody464_5

def globalBody464_7 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "pc",
      Flapjack.Exp.const 1#64])) globalBody464_6

def globalBody464_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pc", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody464_7 globalBody464_5

def globalBody464_9 : Prog (BitVec 64) :=
.seq globalBody464_3 globalBody464_8

def globalBody464_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 230#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 231#64)])) globalBody464_9 globalBody464_5

def globalBody464_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "nx2")
        (Flapjack.Exp.const 82#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 127#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "nx2"))]) globalBody464_4 globalBody464_5

def globalBody464_12 : Prog (BitVec 64) :=
.dec ("nx2") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "pc",
      Flapjack.Exp.const 1#64])) globalBody464_11

def globalBody464_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pc", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody464_12 globalBody464_5

def globalBody464_14 : Prog (BitVec 64) :=
.seq globalBody464_3 globalBody464_13

def globalBody464_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 232#64)) globalBody464_14 globalBody464_5

def globalBody464_16 : Prog (BitVec 64) :=
.seq globalBody464_10 globalBody464_15

def globalBody464_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "op")
        (Flapjack.Exp.const 96#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 127#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "op"))]) globalBody464_2 globalBody464_16

def globalBody464_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 91#64)) globalBody464_1 globalBody464_17

def globalBody464_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "pc", Flapjack.Exp.var Flapjack.VarKind.local "adv"])

def globalBody464_20 : Prog (BitVec 64) :=
.seq globalBody464_18 globalBody464_19

def globalBody464_21 : Prog (BitVec 64) :=
.dec ("adv") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody464_20

def globalBody464_22 : Prog (BitVec 64) :=
.dec ("op") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "pc"])) globalBody464_21

def globalBody464_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "pc")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody464_22

def globalBody464_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "bm")

def globalBody464_25 : Prog (BitVec 64) :=
.seq globalBody464_23 globalBody464_24

def globalBody464_26 : Prog (BitVec 64) :=
.dec ("pc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody464_25

def globalBody464_27 : Prog (BitVec 64) :=
.seq globalBody464_0 globalBody464_26

def globalBody464_28 : Prog (BitVec 64) :=
.decCall ("bm") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.shift Flapjack.Shift.lsr
            (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64])
            (Flapjack.Exp.const 6#64),
          Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) globalBody464_27

def globalData464 : Decl (BitVec 64) :=
.function { name := "compute_jumpdests", inline := false, exported := false, params := [("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody464_28, returnShape := (Flapjack.Shape.one) }
def globalOutput464 := Pancake.PanLang.declToHOL globalData464
end InitECandidate.Proofs.FrontendStages.Declarations

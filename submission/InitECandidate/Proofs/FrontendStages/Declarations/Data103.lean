import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify87
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body103_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i"])])

def body103_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def body103_2 : Prog (BitVec 64) :=
.seq body103_0 body103_1

def body103_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 136#64)) body103_2

def body103_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                  Flapjack.Exp.const 1#64]))
            (Flapjack.Exp.const 8#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                  Flapjack.Exp.const 2#64]))
            (Flapjack.Exp.const 16#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                  Flapjack.Exp.const 3#64]))
            (Flapjack.Exp.const 24#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.op Flapjack.BinOp.or
              [Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                      Flapjack.Exp.const 4#64]),
                Flapjack.Exp.shift Flapjack.Shift.lsl
                  (Flapjack.Exp.loadByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                        Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
                  (Flapjack.Exp.const 8#64),
                Flapjack.Exp.shift Flapjack.Shift.lsl
                  (Flapjack.Exp.loadByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                        Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
                  (Flapjack.Exp.const 16#64),
                Flapjack.Exp.shift Flapjack.Shift.lsl
                  (Flapjack.Exp.loadByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                        Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64]))
                  (Flapjack.Exp.const 24#64)])
            (Flapjack.Exp.const 32#64)]])

def body103_5 : Prog (BitVec 64) :=
.seq body103_4 body103_1

def body103_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 136#64)) body103_5

def body103_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body103_3 body103_6

def body103_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_f1600" [Flapjack.Exp.var Flapjack.VarKind.local "stp"]

def body103_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body103_10 : Prog (BitVec 64) :=
.seq body103_8 body103_9

def body103_11 : Prog (BitVec 64) :=
.seq body103_7 body103_10

def body103_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body103_11

def body103_13 : Prog (BitVec 64) :=
.seq body103_7 body103_8

def body103_14 : Prog (BitVec 64) :=
.seq body103_13 body103_9

def body103_15 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body103_14

def originalData103 : Decl (BitVec 64) :=
.function { name := "keccak_absorb_block", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := body103_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData103 : Decl (BitVec 64) :=
.function { name := "keccak_absorb_block", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := body103_15, returnShape := (Flapjack.Shape.one) }
def original103 := Pancake.PanLang.declToHOL originalData103
def simplified103 := Pancake.PanLang.declToHOL simplifiedData103
end InitECandidate.Proofs.FrontendStages.Declarations

import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify898
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body914_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body914_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 16#64],
    Flapjack.Exp.var Flapjack.VarKind.local "wei"]

def body914_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_n" (Flapjack.Exp.const 0#64)

def body914_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body914_4 : Prog (BitVec 64) :=
.seq body914_2 body914_3

def body914_5 : Prog (BitVec 64) :=
.seq body914_1 body914_4

def body914_6 : Prog (BitVec 64) :=
.decCall ("wei") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "amt",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1000000000#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]) body914_5

def body914_7 : Prog (BitVec 64) :=
.dec ("amt") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64]),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 1#64]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 2#64]))
          (Flapjack.Exp.const 16#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 3#64]))
          (Flapjack.Exp.const 24#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64]),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 1#64]))
                (Flapjack.Exp.const 8#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 2#64]))
                (Flapjack.Exp.const 16#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 3#64]))
                (Flapjack.Exp.const 24#64)])
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body914_6

def body914_8 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "wd",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]) body914_7

def body914_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) body914_8

def body914_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def body914_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body914_12 : Prog (BitVec 64) :=
.seq body914_10 body914_11

def body914_13 : Prog (BitVec 64) :=
.seq body914_9 body914_12

def body914_14 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body914_13

def body914_15 : Prog (BitVec 64) :=
.dec ("wd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64])) body914_14

def body914_16 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) body914_15

def body914_17 : Prog (BitVec 64) :=
.seq body914_0 body914_16

def body914_18 : Prog (BitVec 64) :=
.seq body914_1 body914_2

def body914_19 : Prog (BitVec 64) :=
.seq body914_18 body914_3

def body914_20 : Prog (BitVec 64) :=
.decCall ("wei") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "amt",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1000000000#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]) body914_19

def body914_21 : Prog (BitVec 64) :=
.dec ("amt") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64]),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 1#64]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 2#64]))
          (Flapjack.Exp.const 16#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 3#64]))
          (Flapjack.Exp.const 24#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64]),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 1#64]))
                (Flapjack.Exp.const 8#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 2#64]))
                (Flapjack.Exp.const 16#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 36#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 3#64]))
                (Flapjack.Exp.const 24#64)])
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body914_20

def body914_22 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "wd",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]) body914_21

def body914_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) body914_22

def body914_24 : Prog (BitVec 64) :=
.seq body914_23 body914_10

def body914_25 : Prog (BitVec 64) :=
.seq body914_24 body914_11

def body914_26 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body914_25

def body914_27 : Prog (BitVec 64) :=
.dec ("wd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64])) body914_26

def body914_28 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) body914_27

def body914_29 : Prog (BitVec 64) :=
.seq body914_0 body914_28

def originalData914 : Decl (BitVec 64) :=
.function { name := "process_withdrawals", inline := false, exported := false, params := [("pl", Flapjack.Shape.one)], body := body914_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData914 : Decl (BitVec 64) :=
.function { name := "process_withdrawals", inline := false, exported := false, params := [("pl", Flapjack.Shape.one)], body := body914_29, returnShape := (Flapjack.Shape.one) }
def original914 := Pancake.PanLang.declToHOL originalData914
def simplified914 := Pancake.PanLang.declToHOL simplifiedData914
end InitECandidate.Proofs.FrontendStages.Declarations

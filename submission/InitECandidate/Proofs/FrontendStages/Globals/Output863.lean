import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data863
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody863_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody863_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "fb"
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "txs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])))

def globalBody863_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody863_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody863_1 globalBody863_2

def globalBody863_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "el"), none)) "rlp_bytes_encoded_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "fb", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody863_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "fb") (Flapjack.Exp.const 192#64)])) globalBody863_4 globalBody863_2

def globalBody863_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "tl", Flapjack.Exp.var Flapjack.VarKind.local "el"])

def globalBody863_7 : Prog (BitVec 64) :=
.seq globalBody863_5 globalBody863_6

def globalBody863_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody863_9 : Prog (BitVec 64) :=
.seq globalBody863_7 globalBody863_8

def globalBody863_10 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") globalBody863_9

def globalBody863_11 : Prog (BitVec 64) :=
.seq globalBody863_3 globalBody863_10

def globalBody863_12 : Prog (BitVec 64) :=
.dec ("fb") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody863_11

def globalBody863_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "txs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])) globalBody863_12

def globalBody863_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) globalBody863_13

def globalBody863_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "tl"])

def globalBody863_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 1#64])

def globalBody863_17 : Prog (BitVec 64) :=
.seq globalBody863_15 globalBody863_16

def globalBody863_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody863_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "wl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "wl", Flapjack.Exp.var Flapjack.VarKind.local "wlen"])

def globalBody863_20 : Prog (BitVec 64) :=
.seq globalBody863_19 globalBody863_8

def globalBody863_21 : Prog (BitVec 64) :=
.decCall ("wlen") (Flapjack.Shape.one) ("withdrawal_rlp_len") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]]) globalBody863_20

def globalBody863_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) globalBody863_21

def globalBody863_23 : Prog (BitVec 64) :=
.seq globalBody863_18 globalBody863_22

def globalBody863_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "wl"]

def globalBody863_25 : Prog (BitVec 64) :=
.seq globalBody863_23 globalBody863_24

def globalBody863_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "wl"])

def globalBody863_27 : Prog (BitVec 64) :=
.seq globalBody863_25 globalBody863_26

def globalBody863_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "total"]

def globalBody863_29 : Prog (BitVec 64) :=
.seq globalBody863_27 globalBody863_28

def globalBody863_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl"])

def globalBody863_31 : Prog (BitVec 64) :=
.seq globalBody863_29 globalBody863_30

def globalBody863_32 : Prog (BitVec 64) :=
.dec ("wl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody863_31

def globalBody863_33 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) globalBody863_32

def globalBody863_34 : Prog (BitVec 64) :=
.seq globalBody863_17 globalBody863_33

def globalBody863_35 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "tl"]) globalBody863_34

def globalBody863_36 : Prog (BitVec 64) :=
.seq globalBody863_14 globalBody863_35

def globalBody863_37 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody863_36

def globalBody863_38 : Prog (BitVec 64) :=
.dec ("tl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody863_37

def globalBody863_39 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) globalBody863_38

def globalBody863_40 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) globalBody863_39

def globalBody863_41 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "he")) globalBody863_40

def globalBody863_42 : Prog (BitVec 64) :=
.seq globalBody863_0 globalBody863_41

def globalBody863_43 : Prog (BitVec 64) :=
.decCall ("he") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr"]) globalBody863_42

def globalBody863_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody863_43

def globalData863 : Decl (BitVec 64) :=
.function { name := "block_rlp_length", inline := false, exported := false, params := [("hdr", Flapjack.Shape.one), ("pl", Flapjack.Shape.one)], body := globalBody863_44, returnShape := (Flapjack.Shape.one) }
def globalOutput863 := Pancake.PanLang.declToHOL globalData863
end InitECandidate.Proofs.FrontendStages.Declarations
